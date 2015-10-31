class AddHeadPortraitToUser < ActiveRecord::Migration
  def change
  	add_column :users, :head_portrait , :string
  end
end
