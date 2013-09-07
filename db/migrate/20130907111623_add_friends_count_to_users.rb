class AddFriendsCountToUsers < ActiveRecord::Migration
  def change
    add_column :users, :friend_count, :integer
    add_column :users, :profile_image_url, :string
  end
end
