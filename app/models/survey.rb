class Survey < ActiveRecord::Base
  has_many :rounds
  has_many :questions
  belongs_to :creator, class_name: 'User', foreign_key: 'user_id'
  has_many :users, through: :rounds

  def stats
    d_array = []
    questions.each do |q|
      stats = Hash.new(0)
      q.decisions.each do |d|
        stats[d.decision] += 1
      end
      d_array << stats
    end
    d_array
  end
end
