class Offspring < ApplicationRecord
  belongs_to :user
  has_one :assignment
  enum grade: { primary_first: 1, primary_second: 2, primary_third: 3, others: 0 }
  validates :first_name, presence: true, length: { within: 2..60 }
  validates :last_name,  presence: true, length: { within: 2..60 }
  validates :grade, presence: true
  # Validates surname is the same for all offspring
end
