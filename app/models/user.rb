class User < ActiveRecord::Base
  include BCrypt
  attr_accessor :password_confirmation
  has_many :rounds
  has_many :surveys
  validates :username, uniqueness:true
  validates :username, presence:true
  validates :password, presence:true

  validates :password, length: { minimum: 6 }
  validates_confirmation_of :password, :confirm => :password_confirmation

  def password_confirmation_matches
    unless password_confirmation == self.password
      errors.add(:password_confirmation, "must match password")
    end
  end

  def password
    @password ||= Password.new(password_hash)
  end

  def password=(new_password)
    @password = Password.create(new_password)
    self.password_hash = @password
  end

end
