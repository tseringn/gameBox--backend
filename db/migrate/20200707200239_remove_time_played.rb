class RemoveTimePlayed < ActiveRecord::Migration[6.0]
  def change
    remove_column :user_games, :time_played
  end
end
