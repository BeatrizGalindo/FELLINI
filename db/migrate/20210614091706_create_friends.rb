class CreateFriends < ActiveRecord::Migration[6.0]
  def change
    create_table :friends do |t|
      t.references :user, null: false, foreign_key: true
      t.references :friend

      t.timestamps
    end
    add_foreign_key :friends, :users, column: :friend_id, primary_key: :id
  end
end
