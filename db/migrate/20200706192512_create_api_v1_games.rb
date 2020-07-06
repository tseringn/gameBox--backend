class CreateApiV1Games < ActiveRecord::Migration[6.0]
  def change
    create_table :api_v1_games do |t|
      t.string :name,
      t.integer, :rating
      t.string :genre
      t.string :,
      t.string :img_ur,
      t.string :link

      t.timestamps
    end
  end
end
