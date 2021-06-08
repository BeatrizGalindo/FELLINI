class RemovePlatformTables < ActiveRecord::Migration[6.0]
  def change
    drop_table :movie_platforms
    drop_table :platforms
    add_column :movies, :platform, :string
  end
end
