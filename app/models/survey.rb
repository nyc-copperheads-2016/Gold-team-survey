class Survey < ActiveRecord::Base
  belongs_to :round
  has_many :questions
  belongs_to :creator, class_name: 'User', foreign_key: 'user_id'
end
