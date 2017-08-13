class Offspring < ApplicationRecord
  i18n_scope = 'activerecord.errors.models.offspring.attributes'.freeze
  belongs_to :user
  has_one :assignment, dependent: :destroy
  enum grade: { primary_first: 1, primary_second: 2, primary_third: 3, others: 0 }
  validates :first_name, presence: true, length: { within: 2..60 }
  validates :last_name,  presence: true, length: { within: 2..60 }
  validates :grade, presence: true
  # Validates surname is the same for all offspring

  validates_each :last_name do |offspring|
    if offspring.user && offspring.user.offsprings.first
      unless offspring.last_name == offspring.user.offsprings.first.last_name
        offspring.errors.add(:last_name, I18n.t('last_name.different', scope: i18n_scope))
      end
    end
  end
end
