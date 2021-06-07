class CreateMoviePlatforms < ActiveRecord::Migration[6.0]
  def change
    create_table :movie_platforms do |t|
      t.references :movie, null: false, foreign_key: true
      t.references :platform, null: false, foreign_key: true

      t.timestamps
    end
  end
end
