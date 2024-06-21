class ServersController < ApplicationController
  before_action :authenticate_user!

  def index
    @servers = Server.all # Adjust this line as per your application's logic
  end

  def show
    @server = Server.find(params[:id])
  end
end
