class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :firstname
      t.string :lastname
      t.string :email
      t.string :password
      t.integer :isdesigner

      t.timestamps
    end
  end
end
