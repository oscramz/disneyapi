class CreateMovies < ActiveRecord::Migration[7.0]
  def change
    create_table :movies do |t|
      t.string :avatar
      t.string :title
      t.string :release_date
      t.integer :rating
      t.references :character, null: false, foreign_key: true

      t.timestamps
    end
  end
end
