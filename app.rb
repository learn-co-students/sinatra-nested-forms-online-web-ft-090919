require './environment'

module FormsLab
  class App < Sinatra::Base

    get "/" do
      erb :root
    end

    get '/new' do
      erb :'pirates/new'
    end

    post '/pirates' do
      @pirate = Pirate.from_params(params[:pirate])
      params[:pirate][:ships].each do |ship|
        Ship.from_params(ship)
      end
      @ships = Ship.all
      erb :'pirates/show'
    end

  end
end
