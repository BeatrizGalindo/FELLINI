class RemoveImageUrlFromUsers < ActiveRecord::Migration[6.0]
  def change
    remove_column :users, :image_url
  end
end
