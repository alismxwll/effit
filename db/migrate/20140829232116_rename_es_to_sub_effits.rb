class RenameEsToSubEffits < ActiveRecord::Migration
  def change
    rename_table :es, :subEffits
  end
end
