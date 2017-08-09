class Offspring < ApplicationRecord
  belongs_to :user
  enum grade: { primary_first: 1, :primary_second: 2, primary_third: 3, others: 0 }
end
