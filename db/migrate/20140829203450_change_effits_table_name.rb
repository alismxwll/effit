class ChangeEffitsTableName < ActiveRecord::Migration
  def change
    rename_table :effits, :es
  end
end
