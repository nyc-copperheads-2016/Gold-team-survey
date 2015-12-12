class Round < ActiveRecord::Base
  belongs_to :user
  belongs_to :survey
  has_many :decisions
  has_many :questions, through: :decisions

  def get_unanswered_q
    all_unanswered = survey.questions.select{|q| q.decisions.length == 0}
  end

end
