class User < ActiveRecord::Base
  has_many :posts
  has_many :comments

  include BCrypt

  validates :firstname, :lastname, :username, :email, :password, :presence => true

  validates :username, :uniqueness => true
  validates :email, :uniqueness => true, :format => {:with => /^.+@.+$/ , :message => "Invalid Email Address"}

  def password
    @password ||= Password.new(password_hash)
  end

  def password=(new_password)
    @password = Password.create(new_password)
    self.password_hash = @password
  end
  
  def self.authenticate?(params)
    user = User.find_by_username(params[:username])
    return nil if user.nil?
    user.password == params[:password]
  end
end

