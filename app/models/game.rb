class Game < ApplicationRecord
    has_many :usergames
    has_many :users, through: :usergame
end
