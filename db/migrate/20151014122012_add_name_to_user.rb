class AddNameToUser < ActiveRecord::Migration
  def change
  	add_column :users, :name, :string
  	add_column :users, :authorize, :string 
  end
end
