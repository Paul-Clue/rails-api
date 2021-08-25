class UserController < ApplicationController
  skip_before_action :verify_authenticity_token
  before_action :set_user, only: [:show, :update, :destroy]

  # GET /todos
  def index
    # @user = User.all
    # @user2 = User.find_by(name: params[:name])
    # json_response(@user2)


    @user = User.find_by(name: params[:name])
    # @user = User.find(params[:name])
    if @user.password == params[:password]
      # render json: @user
      json_response(@user)
    else
      render json: {message: 'This user is not authenticated.'}
    end
  end

  # POST /todos
  def create
    @user = User.create!(user_params)
    json_response(@user, :created)
  end

  def show
    @user = User.find_by(name: params[:name])
    if @user.password == params[:password]
      json_response(@user)
    else
      render json: {message: 'This user is not authenticated.'}
    end
  end

  def update
    @user.update(user_params)
    head :no_content
  end

  def destroy
    @user.destroy
    head :no_content
  end

  private

  def user_params
    params.permit(:name, :password)
  end

  def set_user
    @user = User.find_by(name: params[:name])
  end
end
