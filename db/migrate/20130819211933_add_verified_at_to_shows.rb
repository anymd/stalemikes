class AddVerifiedAtToShows < ActiveRecord::Migration
  def up
    add_column :shows, :verified_at, :datetime
  end

  def down
    remove_column :shows, :verified_at
  end
end
