class Learner < ApplicationRecord
  belongs_to :shiur

  validates :name, presence: true
end
