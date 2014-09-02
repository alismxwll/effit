class AddPublishedColumnToPostits < ActiveRecord::Migration
  def change
    add_column :postits, :published, :boolean
  end
end
