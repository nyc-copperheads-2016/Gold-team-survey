class Round < ActiveRecord::Base
  belongs_to :user
  belongs_to :survey
  has_many :decisions
  has_many :questions, through: :decisions
end
