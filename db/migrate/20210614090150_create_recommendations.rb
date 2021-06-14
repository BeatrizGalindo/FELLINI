class CreateRecommendations < ActiveRecord::Migration[6.0]
  def change
    create_table :recommendations do |t|
      t.references :user
      t.references :recommendee
      t.references :movie

      t.timestamps
    end
    add_foreign_key :recommendations, :users, column: :recommendee_id, primary_key: :id
  end
end


