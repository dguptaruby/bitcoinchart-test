class Chart < ApplicationRecord

  scope :one_hour, -> { where("start_at > ?", 1.hour.ago) }
  scope :one_week, -> { where("start_at > ?", 1.week.ago) }
  scope :one_day, -> { where("start_at > ?", 1.day.ago) }
  scope :one_month, -> { where("start_at > ?", 1.month.ago) }
  scope :one_year, -> { where("start_at > ?", 1.year.ago) }
end
