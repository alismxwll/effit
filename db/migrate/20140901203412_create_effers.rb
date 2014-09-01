class CreateEffers < ActiveRecord::Migration
  def change
    create_table :effers do |t|
      t.column :account_name, :string
      t.column :password, :string
    end
  end
end
