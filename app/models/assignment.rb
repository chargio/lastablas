class Assignment < ApplicationRecord
  belongs_to :offspring
  belongs_to :shift
  validates :offspring, presence: true, uniqueness: true
  validates :shift,     presence: true
end
