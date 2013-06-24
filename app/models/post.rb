class Post < ActiveRecord::Base
  belongs_to :user
  has_many :comments
  has_many :votes, :as => :voteable

  validates_presence_of :titles, :content
end

