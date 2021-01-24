class Api::v1::AppointmentsController < ApplicationController
    def index
        @appointments = Appointment.all
        render json: @appointments
    end

    def show
        @appointment = Appointment.find(params[:id])
        render json: @appointment
    end

    def new 
        @appointment = Appointment.new
        render json: @appointment
    end

    def create
        @appointment = Appointment.create(appointment_params)
        render json: @appointment
    end

    def update
        @appointment = Appointment.find(params[:id])
        @appointment.update(appointment_params)
        render json: @appointment
    end

    private

    def appointment_params
        params.require(:appointment).permit(:date, :rental_id, :slope_id, :user_id)
    end
end