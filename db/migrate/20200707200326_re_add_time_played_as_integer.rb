class ReAddTimePlayedAsInteger < ActiveRecord::Migration[6.0]
  def change
    add_column :user_games, :time_played, :integer
    #Ex:- add_column("admin_users", "username", :string, :limit =>25, :after => "email")
  end
end
