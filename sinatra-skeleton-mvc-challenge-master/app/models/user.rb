require 'bcrypt'

class User < ActiveRecord::Base

  def password
    @password ||= BCrypt::Password.new(password_hash)
  end

  def password=(new_password)
    @password = BCrypts::Password.create(new_password)
    self.password_hash = @password
  end

  def authenticate(password)
    self.password == password
  end
end
