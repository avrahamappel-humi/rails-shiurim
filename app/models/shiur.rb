class Shiur < ApplicationRecord
  has_many :learners

  validates :name, presence: true
end
