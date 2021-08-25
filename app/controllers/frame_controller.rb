class FrameController < ApplicationController
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
    @frame = Frame.find_by(make: params[:make])
    json_response(@frame)
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
    params.permit(:make)
  end

  def set_user
    @frame = Frame.find_by(make: params[:make])
  end
end
