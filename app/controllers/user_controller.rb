class UserController < ApplicationController
  skip_before_action :verify_authenticity_token
  before_action :set_user, only: %i[show update]

  # GET /todos
  def index
    @user = User.find_by(name: params[:name])
    if @user.password == params[:password]
      json_response(@user)
    else
      render json: { message: 'This user is not authenticated.' }
    end
  end

  # POST /todos
  def create
    @check = User.all
    check = false
    @check.each do |v|
      if v.password == params[:password] && v.name == params[:name]
        check = true
        break
      end
    end
    if check
      render json: { message: 'no-no' }
    else
      @user = User.create!(user_params)
      json_response(@user, :created)
    end
  end
# rubocop:disable all
  def show
    @user1 = User.all
    @user2 = []
    @user1.each do |v|
      @user2 << v
    end
    @user = false
    if @user2.length <= 1
      no = { name: 'no' }
      json_response(no)
    else
      @user2.each_with_index do |v, _i|
        if v.name == params[:name] && v.password == params[:password]
          @user = User.find_by(name: params[:name])
          break
        end
      end
      if @user
        json_response(@user)
      else
        render json: { message: 'Couldn\'t find User' }
      end
    end
  end

  def update
    @us = User.all
    @us.each do |v|
      if v.id == params[:id]
        v.update(user_params)
        head :no_content
      end
    end
  end

  def destroy
    @use = User.all
    @use.each do |v|
      if v.id == params[:id]
        v.destroy
        head :no_content
      end
    end
  end

  private

  def user_params
    params.permit(:name, :password)
  end

  def set_user
    @user = User.find_by(name: params[:name])
  end
end
