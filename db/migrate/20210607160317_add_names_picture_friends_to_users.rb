class AddNamesPictureFriendsToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :first_name, :last_name, :picture, :friends
  end
end
