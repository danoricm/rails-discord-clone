class ServersController < ApplicationController
    # Ensure user is authenticated before accessing any action in this controller
    before_action :authenticate_user!
  
    # GET /servers
    # This action will be called when you visit /servers
    # It retrieves all the server records from the database and stores them in @servers
    def index
      @servers = Server.all # Assuming you have a Server model
    end
    
    # GET /servers/:id
    # This action will be called when you visit /servers/:id (e.g., /servers/1)
    # It retrieves a specific server record based on the provided ID and stores it in @server
    def show
      @server = Server.find(params[:id]) # Find the server with the specified ID
    end
  end  