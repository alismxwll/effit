class CreatePostits < ActiveRecord::Migration
  def change
    create_table :postits do |t|
      t.column :name, :string
      t.column :content, :string
      t.column :user_id, :integer
    end
  end
end
