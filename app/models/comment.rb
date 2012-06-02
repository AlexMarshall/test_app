class Comment < ActiveRecord::Base
  belongs_to :micropost
  attr_accessible :body, :commenter
end
