class Choice < ActiveRecord::Base
  belongs_to :question

  validates :a, length: { minimum: 1 }
  validates :b, length: { minimum: 1 }
  validates :c, length: { minimum: 1 }
  validates :d, length: { minimum: 1 }
end
