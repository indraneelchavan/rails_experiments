class ChangeContactPinDatatypesInUsers < ActiveRecord::Migration
  def change
  	change_column :users, :pin, :string
    change_column :users, :contact, :string
  end
end
