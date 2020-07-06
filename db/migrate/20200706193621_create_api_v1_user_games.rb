class CreateApiV1UserGames < ActiveRecord::Migration[6.0]
  def change
    create_table :api_v1_user_games do |t|
      t.integer :user_id
      t.integer :game_id
      t.dateTime :time_played
      t.boolean :completed
      t.string :profile_pic

      t.timestamps
    end
  end
end
