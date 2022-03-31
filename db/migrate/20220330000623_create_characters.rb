class CreateCharacters < ActiveRecord::Migration[7.0]
  def change
    create_table :characters do |t|
      t.string :avatar
      t.string :name
      t.integer :age
      t.integer :weight
      t.string :history
      t.references :movie, null: false, foreign_key: true

      t.timestamps
    end
  end
end
