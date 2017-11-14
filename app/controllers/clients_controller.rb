class ClientsController < ApplicationController

  def new
    @client = Client.new
  end

  def create
    @client = Client.new client_params
    if @client.save
      flash[:success] = "Thank you! We have recieved your submission!"
      redirect_to root_path
    else
      render :new
    end
  end

  def edit
    @client = Client.find(params[:id])
  end

  def update
    @client = Client.find(params[:id])
    if @client.update client_params
      redirect_to admin_path, notice: "Client info updated"
    else
      render :edit
    end
  end

  def destroy
    @client = Client.find(params[:id])
    @client.destroy
    redirect_to admin_path, notice: "Client deleted"
  end

  private

  def client_params
    params.require(:client).permit(:first_name, :last_name, :email, :pick_up_location, :pick_up_date, :pick_up_time, :phone_number, :city)
  end

end
