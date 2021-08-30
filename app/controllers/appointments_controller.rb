class AppointmentsController < ApplicationController
  skip_before_action :verify_authenticity_token
  before_action :set_user
  before_action :set_appointments, only: [:update, :destroy]

  # GET /user/:user_id/appointments
  def index
    @app = @user.appointments.all
    # @app = @user.appointments.find_by!(frame_id: params[:frame_id])
    puts "This: #{@app}"
    json_response(@app)
  end

  # GET /user/:user_id/appointments/:id
  def show
    @app = @user.appointments.all
    # json_response(@appointments)

    # @appointment = Appointment.find_by(user_id: params[:user_id])
    if @user == nil
      @appointments = nil
    else
      @app.each_with_index do |v|
        if v.frame_id == params[:frame_id]
          @appointments = @user.appointments.find_by!(frame_id: params[:frame_id])
          json_response(@appointments)
        end
      end
      # @appointments = @user.appointments.find_by!(frame_id: params[:frame_id])
    end
    # @appointment = Appointment.find_by(date: "fish")
    if @appointments == nil
      @message = {date: ''}
      render json: (@message)
    # else
    #   json_response(@appointments)
    end
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
    params.require(:appointment).permit(:date, :user_id, :frame_id, :city)
  end

  def set_user
    @user = User.find_by(id: params[:user_id])
  end

  def set_appointments
    @appointments = @user.appointments.find_by!(date: params[:date]) if @user
  end
end
