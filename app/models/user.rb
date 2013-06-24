class User < ActiveRecord::Base
  has_many :posts
  has_many :comments
  has_many :votes
  has_secure_password

  validates :firstname, :lastname, :username, :email, :password, :presence => true
  validates :username, :uniqueness => true
  validates :email, :uniqueness => true, :format => {:with => /^.+@.+$/ , :message => "Invalid Email Address"}
end

