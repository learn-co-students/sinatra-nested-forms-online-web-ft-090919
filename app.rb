require './environment'

module FormsLab
  class App < Sinatra::Base

    # code other routes/actions here

  end
end
require './environment'

class FormsLab::App < Sinatra::Base

  get '/' do
    erb :root
  end

  get '/new' do
    
    erb :'pirates/new'
  end
  
  post '/pirates' do
    @pirate = Pirate.new(params[:pirate])

    params[:pirate][:ships].each do |deets|
      Ship.new(deets)
    end

    @ships = Ship.all

    erb :'pirates/show'
  end
end