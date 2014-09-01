class CreateCommits < ActiveRecord::Migration
  def change
    create_table :commits do |t|
      t.column :content, :string
      t.column :user_id, :integer
    end
  end
end
