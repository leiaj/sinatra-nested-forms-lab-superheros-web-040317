require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :super_hero
    end

    post '/teams' do
      @team = Team.new(name: params[:team][:name], motto: params[:team][:motto])
      @members = []
      params[:team][:members].each do |hero|
        hero = Hero.new(name: hero[:name], power: hero[:power], bio: hero[:bio])
        @members << hero
      end
      erb :team
    end

    get '/teams' do
      erb :team
    end


end
