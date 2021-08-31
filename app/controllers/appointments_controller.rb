class AppointmentsController < ApplicationController
  skip_before_action :verify_authenticity_token
  before_action :set_user, only: %i[show update index]
  before_action :set_appointments, only: %i[update destroy]

  # GET /user/:user_id/appointments
  def index
    @app = @user.appointments.all
    puts "This: #{@app}"
    json_response(@app)
  end

  # GET /user/:user_id/appointments/:id
  # rubocop:disable all
  def show
    @app = @user.appointments.all
    if @user.nil?
      @appointments = nil
    else
      @app.each do |v|
        if v.frame_id == params[:frame_id]
          @appointments = @user.appointments.find_by!(frame_id: params[:frame_id])
          json_response(@appointments)
        end
      end
    end
    if @appointments.nil?
      @message = { date: '' }
      render json: @message
    end
  end

  def create
    @appointment = Appointment.create!(appointments_params)
    json_response(@appointment, :created)
  end

  # PUT /user/:user_id/appointments/:id
  def update
    @appointments.update(appointments_params)
    head :no_content
  end

  # DELETE /user/:user_id/appointents/:id
  def destroy
    @appointments.destroy
    head :no_content
  end

  private

  def appointments_params
    params.require(:appointment).permit(:date, :user_id, :frame_id, :city)
  end

  def set_user
    @user = User.find(params[:user_id])
  end

  def set_appointments
    @appointments = @user.appointments.find_by!(date: params[:date]) if @user
  end
end
