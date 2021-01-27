class Api::V1::AppointmentsController < ApplicationController
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
        logger.debug "created appointment obj: #{@appointment.attributes.inspect}"
        render json: @appointment
    end

    def update
        @appointment = Appointment.find(params[:id])
        @appointment.update(appointment_params)
        render json: @appointment
    end
    
    def destroy
        @appointment = Appointment.find(params[:id])
        @appointment.destroy
        render json: @appointment
    end


    private

    def appointment_params
        params.require(:appointment).permit(:date, :user_id, :rental_id, :slope_id, :confirm)
    end
end