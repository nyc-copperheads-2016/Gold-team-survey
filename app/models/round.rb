class Round < ActiveRecord::Base
  belongs_to :user
  belongs_to :survey
  has_many :decisions
  has_many :questions, through: :decisions

  def get_unanswered_q
    survey.questions.reject{|q| q.decisions.pluck(:round_id).include?(id)}
  end

end
