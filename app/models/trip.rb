class Trip < ApplicationRecord
  validates :result, presence: true
  validates :date, presence: true
end
