class CreateGenres < ActiveRecord::Migration[7.0]
  def change
    create_table :genres do |t|
      t.string :name
      t.string :avatar
      t.references :movies, null: false, foreign_key: true

      t.timestamps
    end
  end
end
