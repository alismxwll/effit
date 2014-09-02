class AddTimestampToSubeffits < ActiveRecord::Migration
  def change
    add_column(:subeffits, :created_at, :datetime)
    add_column(:subeffits, :updated_at, :datetime)
  end
end
