class AddTimestampsToPostitsTable < ActiveRecord::Migration
  def change
    add_column(:postits, :created_at, :datetime)
    add_column(:postits, :updated_at, :datetime)    
  end
end
