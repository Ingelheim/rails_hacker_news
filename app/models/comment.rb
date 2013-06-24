class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :post
  has_many :cvotes

  validates_presence_of :text
end
