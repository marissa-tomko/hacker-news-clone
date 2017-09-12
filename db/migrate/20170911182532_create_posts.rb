class CreatePosts < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|
      t.string  :title, null: false
      t.string  :content, null: false
      t.integer :user_id
      t.integer :comment_count

      t.timestamps
    end
  end
end
