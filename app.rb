require './environment'
require_relative '/models/pirate'
require_relative '/models/ship'

module FormsLab
  class App < Sinatra::Base

    # code other routes/actions here

    get '/' do
      erb :new
    end

    post '/pirates' do
      @new_pirate = Pirate.new(params[:pirate])
      Ship.new(params[:ships][0])
      Ship.new(params[:ships][1])
      @ships = Ships.all

      erb :show
    end


  end
end
