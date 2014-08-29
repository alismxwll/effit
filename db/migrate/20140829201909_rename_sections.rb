class RenameSections < ActiveRecord::Migration
  def change
    rename_table :sections, :effits
  end
end
