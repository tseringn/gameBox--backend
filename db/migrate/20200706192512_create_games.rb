class CreateGames < ActiveRecord::Migration[6.0]
  def change
    create_table :games do |t|
      t.string :name
      t.integer :rating
      t.string :genre
      t.string :platform
      t.string :img_ur
      t.string :link

      t.timestamps
    end
  end
end
