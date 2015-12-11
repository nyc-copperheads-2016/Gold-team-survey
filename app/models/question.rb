class Question < ActiveRecord::Base
  belongs_to :survey
  has_many :choices
  has_many :decisions
  has_many :rounds, through: :decisions
end
