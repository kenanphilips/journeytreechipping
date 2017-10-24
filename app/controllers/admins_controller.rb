class AdminsController < ApplicationController
  before_action :authenticate_admin!

  def index
    @clients = Client.where(params[:id]).order("created_at DESC")

    @clients = if params[:client]
      Client.where("first_name || ' ' || last_name ILIKE :s", :s => "%#{params[:client]}%")
    else
      Client.all
    end
  end

  private

  def client_params
    params.require(:client).permit(:first_name, :last_name, :email, :pick_up_location, :pick_up_date, :pick_up_time, :phone_number)
  end

end
