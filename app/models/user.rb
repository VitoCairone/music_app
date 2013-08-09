require 'bcrypt'

class User < ActiveRecord::Base
  attr_accessible :email, :password, :session_token, :activated, :admin

  has_many :notes

  def password
    @password ||= BCrypt::Password.new(password_digest)
  end

  def password=(new_password)
    @password = BCrypt::Password.create(new_password)
    self.password_digest = @password
  end
end
