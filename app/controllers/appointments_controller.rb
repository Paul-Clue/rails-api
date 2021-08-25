class AppointmentsController < ApplicationController
  skip_before_action :verify_authenticity_token
  before_action :set_user
  before_action :set_appointments, only: [:show, :update, :destroy]

  # GET /user/:user_id/appointments
  def index
    json_response(@appoinment.name)
  end

  # GET /user/:user_id/appointments/:id
  def show
    # json_response(@appointments)

    @appointment = Appointment.find_by(date: params[:date])
    # @appointment = Appointment.find_by(date: "fish")
    json_response(@appointment.date)
    # if @appointment.password == params[:password]
    #   json_response(@user)
    # else
    #   render json: {message: 'This user is not authenticated.'}
    # end
  end

  # POST /user/:user_id/items
  def create
    @user.appointments.create!(appointments_params)
    @appointments = @user.appointments.find_by!(date: params[:date])
    json_response(@appointments, :created)
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
    params.permit(:date, :user_id)
  end

  def set_user
    @user = User.find_by(id: params[:user_id])
  end

  def set_appointments
    @appointments = @user.appointments.find_by!(date: params[:date]) if @user
  end
end
