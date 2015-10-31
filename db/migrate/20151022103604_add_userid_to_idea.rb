class AddUseridToIdea < ActiveRecord::Migration
  def change
  	add_column :ideas, :user_id, :integer
  	add_column :users, :idea_count, :integer
  end
end
