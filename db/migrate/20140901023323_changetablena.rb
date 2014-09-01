class Changetablena < ActiveRecord::Migration
  def change
    rename_table :subEffits, :subeffits
  end
end
