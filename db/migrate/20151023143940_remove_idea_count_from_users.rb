class RemoveIdeaCountFromUsers < ActiveRecord::Migration
  def change
    remove_column :users, :idea_count, :integer
  end
end
