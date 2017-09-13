class CreatePostVotes < ActiveRecord::Migration[5.1]
  def change
    create_table :post_votes do |t|
      t.integer :value
      t.references :post
    end
  end
end
