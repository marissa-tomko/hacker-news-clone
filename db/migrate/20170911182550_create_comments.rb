class CreateComments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|
      t.string  :content, null: false
      t.integer :user_id
      t.integer :post_id

      t.timestamps
    end
  end
end
