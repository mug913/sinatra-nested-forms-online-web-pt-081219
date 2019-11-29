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
      @pirate = Pirate.new(params[:pirate][:name],params[:pirate][:weight],params[:pirate][:height])

      params[:pirate][:ships].each do |ship|
        Ship.new(ship[:name],ship[:type],ship[:booty])
      end
      @ship1 = Ship.all[0]
      @ship2 = Ship.all[1]
      erb :"pirates/show"
    end

  end
end
