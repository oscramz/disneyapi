class CreateUsuarios < ActiveRecord::Migration[7.0]
  def change
    create_table :usuarios do |t|
      t.string :name
      t.string :username
      t.string :email
      t.string :password_digest

      t.timestamps
    end
  end
end
