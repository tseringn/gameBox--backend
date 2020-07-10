class Api::V1::GamesController < ApplicationController
    def index
    games=Game.all
    render json: games
    end
    def show
    game=Game.find(params[:id])
    render json: game
    end
    def update
        game=Game.find(params[:id])
        game.update(game_params)
        render json: game
    end 
    def genre
        genres=[]
        Game.all.each do |game|
           genre=game.genre.split(', ')
            genre.each do |g|
                genres.push(g)
            end
        end
        render json: genres.uniq
    end


    private

    def game_params
        params.require(:game).permit(:name, :rating, :genre, :platform, :img_url, :link, :ratings_count, :playtime)
    end
end
