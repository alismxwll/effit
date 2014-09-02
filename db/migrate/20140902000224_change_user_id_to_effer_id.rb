class ChangeUserIdToEfferId < ActiveRecord::Migration
  def change
    remove_column :postits, :user_id, :integer
    
    add_column :postits, :effer_id, :integer
  end
end
