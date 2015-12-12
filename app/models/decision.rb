class Decision < ActiveRecord::Base
  belongs_to :round
  belongs_to :question
end
