class ChangeRatingToFloat < ActiveRecord::Migration[6.0]
  def change
    change_column :games, :rating, :float
  end
end
