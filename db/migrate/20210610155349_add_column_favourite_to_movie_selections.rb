class AddColumnFavouriteToMovieSelections < ActiveRecord::Migration[6.0]
  def change
    add_column :movie_selections, :favourite, :boolean, default: false
  end
end
