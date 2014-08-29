class Remove < ActiveRecord::Migration
  def change
    remove_column :sections, :CreateSection
  end
end
