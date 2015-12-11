class Decision < ActiveRecord::Base
  belongs_to :round
  has_many :choices
  has_many :questions, through: :choices
end
