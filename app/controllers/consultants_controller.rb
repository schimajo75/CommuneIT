class ConsultantsController < ApplicationController
    def index
        @consultants = Consultant.all 
    end

    def show
        @consultant = Consultant.find(params[:id])
    end
end
