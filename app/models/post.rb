class Post < ActiveRecord::Base
  attr_accessible :title, :content, :user_id
  belongs_to :user
  has_many :comments
  has_many :votes, :as => :voteable

  validates_presence_of :title, :content
end
