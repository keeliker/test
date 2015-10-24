class AddHeadPortraitToUser < ActiveRecord::Migration
  def change
  	add_column :usersb, :head_portrait , :string
  end
end
