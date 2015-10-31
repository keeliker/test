class RemoveIdeaIdFromUsers < ActiveRecord::Migration
  def change
    remove_column :users, :idea_id, :integer
  end
end
