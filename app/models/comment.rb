class Comment < ActiveRecord::Base
  attr_accessible :text, :post_id, :user_id
  belongs_to :user
  belongs_to :post
  has_many :votes, :as => :voteable

  validates_presence_of :text
end
