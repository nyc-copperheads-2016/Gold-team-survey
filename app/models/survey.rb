class Survey < ActiveRecord::Base
  has_many :rounds
  has_many :questions
  belongs_to :creator, class_name: 'User', foreign_key: 'user_id'
  has_many :users, through: :rounds

  def stats
    d_array = []
    questions.each do |q|
      stats = Hash.new
      q.decisions.each do |d|
        if stats[d.decision]
          stats[d.decision] += 1
        else
          stats[d.decision]=0
        end
      end
      d_array << stats
    end
    d_array
  end
end
