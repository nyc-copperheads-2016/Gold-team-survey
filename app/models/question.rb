class Question < ActiveRecord::Base
  belongs_to :survey
  has_many :choices
  has_many :decisions
  has_many :rounds, through: :decisions

  validates :question, length: { minimum: 2 }
  before_save :capitalize_question, :remove_q_mark

  def capitalize_question
    self.question.capitalize!
  end

  def remove_q_mark
    self.question.delete("?")
  end
  
end
