class Survey < ActiveRecord::Base
  has_many :rounds
  has_many :questions
  belongs_to :creator, class_name: 'User', foreign_key: 'user_id'
  has_many :users, through: :rounds

end
