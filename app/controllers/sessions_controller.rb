class ConsultantsController < ApplicationController

    def create
        @client = Client.find_by(email:login_params[:email])
        if @client 
            session[:client_id] = @client.id
            redirect_to @client
        else
            redirect_to 'home'
        end
    end

    private
    def login_params
        params.require(:login).permit(:email)
    end

end