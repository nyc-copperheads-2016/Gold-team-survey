class User < ActiveRecord::Base
  has_many :rounds
  has_many :surveys

  include BCrypt

  # need to add validations

  def password
    @password ||= Password.new(password_hash)
  end

  def password=(new_password)
    @password = Password.create(new_password)
    self.password_hash = @password
  end

end
