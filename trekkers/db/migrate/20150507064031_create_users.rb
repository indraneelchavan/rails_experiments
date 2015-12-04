class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :city
      t.integer :pin
      t.integer :contact

      t.timestamps null: false
    end

    change_column :users, :pin, :string
    change_column :users, :contact, :string
  end
end
