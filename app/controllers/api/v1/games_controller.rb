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


    private

    def game_params
        params.require(:game).permit(:name, :rating, :genre, :platform, :img_url, :link, :ratings_count, :playtime)
    end
end
