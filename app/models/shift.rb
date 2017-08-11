class Shift < ApplicationRecord
  belongs_to :room
  TIME_REGEX = /\A([01]\d|2[0123]):[012345]\d\z/
  belongs_to :room

  has_many :assignments, dependent: destroy
  enum :day_of_week: Date::DAYS_INTO_WEEK
  validates :day_of_week, presence: true
  validates :start_time, presence: true
  validates :start_time, format: { with: TIME_REGEX, message: I18n.t(".start_time.invalid_format") }
  validates :end_time, presence: true
  validates :end_time, format: { with: TIME_REGEX, message: I18n.t(".start_time.invalid_format") }

  validates_each :end_time do |shift|
    shift.errors.add(:shift, I18n.t(".end_time.end_time_earlier_than_start_time")) if
        shift.start_time > shift.end_time
  end

  validates :sites_reserved, numericality: { only_integer: true }


end
