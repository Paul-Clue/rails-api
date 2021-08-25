class FrameController < ApplicationController
  skip_before_action :verify_authenticity_token
  # before_action :set_frame, only: [:show, :update, :destroy]
  # GET /todos
  def index
    # @user = User.all
    # @user2 = User.find_by(name: params[:name])
    # json_response(@user2)


    @frame = Frame.find_by(make: params[:make])
    json_response(@frame)
    # @user = User.find(params[:name])
    # if @user.password == params[:password]
    #   # render json: @user
    #   json_response(@user)
    # else
    #   render json: {message: 'This user is not authenticated.'}
    # end
  end

  # POST /todos
  def create
    @frame = Frame.create!(frame_params)
    json_response(@frame, :created)
  end

  def show
    # @frame = Frame.find_by(make: params[:make])
    # pic = []
    @frame = Frame.all
    # @frame.each do |f|
    #   pic << 
    # end
    json_response(@frame)
    # json_response(@frame, )

    # if @user.password == params[:password]
    #   json_response(@user)
    # else
    #   render json: {message: 'This user is not authenticated.'}
    # end
  end

  def update
    @frame.update(frame_params)
    head :no_content
  end

  def destroy
    @frame.destroy
    head :no_content
  end

  private

  def frame_params
    # params.permit(:make, :password)
    params.permit(:make, :pic)
  end

  def set_frame
    @frame = Frame.find_by(make: params[:make])
  end
end
