class Api::V1::UserGamesController < ApplicationController
    def index
        user_games = UserGame.all
        render json: user_games
    end
end
