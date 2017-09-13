class CreateCommentVotes < ActiveRecord::Migration[5.1]
  def change
    create_table :comment_votes do |t|
      t.integer :value
      t.references :comment
    end
  end
end
