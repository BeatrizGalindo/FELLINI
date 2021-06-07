class CreateMovies < ActiveRecord::Migration[6.0]
  def change
    create_table :movies do |t|
      t.string :title
      t.string :director
      t.string :poster
      t.string :genre
      t.integer :rating
      t.integer :runtime
      t.integer :year
      t.text :description

      t.timestamps
    end
  end
end
