class AddDescriptionColumn < ActiveRecord::Migration
  def change
    add_column :es, :description, :string
  end
end
