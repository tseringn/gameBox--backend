class Api::V1::UserGamesController < ApplicationController
    def index
<<<<<<< HEAD
        user_games = UserGame.all
        render json: user_games
=======
        user_games=UserGame.all
    render json: user_games
>>>>>>> fbd340804d683f71b6393089cd6fa9847589a629
    end
end
