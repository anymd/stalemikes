class AddFilepicker < ActiveRecord::Migration
    def up
        add_column :shows, :filepicker_url, :string
    end

    def down
        remove_column :shows, :filepicker_url
    end
end  