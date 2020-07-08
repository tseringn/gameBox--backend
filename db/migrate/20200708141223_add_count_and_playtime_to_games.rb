class AddCountAndPlaytimeToGames < ActiveRecord::Migration[6.0]
  def change
    add_column :games, :ratings_count, :integer
    add_column :games, :playtime, :integer
  end
end
