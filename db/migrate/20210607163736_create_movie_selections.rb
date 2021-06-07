class CreateMovieSelections < ActiveRecord::Migration[6.0]
  def change
    create_table :movie_selections do |t|
      t.references :movie, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.boolean :watched, default: false

      t.timestamps
    end
  end
end
