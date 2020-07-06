class CreateApiV1Users < ActiveRecord::Migration[6.0]
  def change
    create_table :api_v1_users do |t|
      t.string :name
      t.string :profile_pic

      t.timestamps
    end
  end
end