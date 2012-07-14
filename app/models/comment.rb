class Comment < ActiveRecord::Base
  belongs_to :micropost
  attr_accessible :body, :commenter
  validates :body, presence: true, length: { maximum: 140 }
end
