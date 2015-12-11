class User < ActiveRecord::Base
  include BCrypt
  has_many :rounds
  has_many :surveys
  validates :username, uniqueness:true
  validates :username, presence:true
  validates :password, presence:true

  def password
    @password ||= Password.new(password_hash)
  end

  def password=(new_password)
    @password = Password.create(new_password)
    self.password_hash = @password
  end

end
