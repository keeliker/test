class CreateAvatars < ActiveRecord::Migration
  def self.up
    create_table :avatars do |t|
      t.string :nickname
      t.string :head_portrait
      t.integer :user_id
      t.timestamps
    end
  end

  def self.down
    drop_table :avatars
  end
end