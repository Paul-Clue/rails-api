# rubocop:disable all
class FrameController < ApplicationController
  skip_before_action :verify_authenticity_token

  # GET /todos
  def index
    @frame = Frame.find_by(make: params[:make])
    json_response(@frame)
  end

  # POST /todos
  def create
    @frame = Frame.create!(frame_params)
    json_response(@frame, :created)
  end

  def show
    @frame = Frame.all
    json_response(@frame)
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
    params.permit(:make, :pic)
  end

  def set_frame
    @frame = Frame.find_by(make: params[:make])
  end
end
