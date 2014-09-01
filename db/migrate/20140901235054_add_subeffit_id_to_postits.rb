class AddSubeffitIdToPostits < ActiveRecord::Migration
  def change
    add_column :postits, :subeffit_id, :integer
  end
end
