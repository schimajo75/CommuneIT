class ClientsController < ApplicationController
    before_action :get_client_by_id, only: [:show, :edit, :update]

    def index
    end

    def new
        @client = Client.new
    end

    def create
        @client = Client.new(client_params)
        if @client.save
            session[:client_id] = @client.id
            redirect_to @client
        else
            render :new
        end
    end

    def update
        if @client.update(client_params)
            redirect_to @client
        else
            render :edit
        end
    end


    private

def client_params
    params.require(:client).permit(:first_name, :last_name, :email, :age)
end

def get_client_by_id
    @client = Client.find(params[:id])
end

end
