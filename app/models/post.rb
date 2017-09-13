class Post < ActiveRecord::Base
  has_many :comments
  belongs_to :user
  has_many :post_votes

  validates :title, presence: true
  validates :content, presence: true

def total_votes
  self.post_votes.reduce(0) {|sum, vote| sum + vote.value}
end




end
