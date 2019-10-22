require './environment'

module FormsLab
  class App < Sinatra::Base

    get '/' do 
      erb :"pirates/new"
    end 

    get '/new' do 
      erb :"pirates/new"
    end

    post '/pirates' do 
      @pirate = Pirate.new(params[:pirate])
      
      params[:pirate][:ships].each do |dets|
        Ship.new(dets)
      end

      @ships = Ship.all
      erb :"pirates/show"
    end

  end
end
