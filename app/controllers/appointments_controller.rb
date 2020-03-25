class AppointmentsController < ApplicationController
    before_action :get_appointment_by_id, only: [:show, :edit, :update, :destroy]

    def new
        @appointment = Appointment.new
    end

    def create
        @appointment = Appointment.new(appt_params)
        if @appointment.save
            redirect_to @appointment
        else
            render :new
        end
    end

def update
    if @appointment.update(appt_params)
        redirect_to @appointment
    else
        render :edit
    end
end

def destroy
    @appointment.destroy
    redirect_to boomer_path(@boomer)
end

private

def appt_params
    params.require(:appointment).permit(:issue, :notes, :rating, :resolved, :boomer_id, :consultant_id)
end

def get_appointment_by_id
    @appointment = Appointment.find(params[:id])
end

end
