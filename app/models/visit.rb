class Visit < ApplicationRecord
  belongs_to :patient
  belongs_to :doctor
  belongs_to :room
  has_many :complaints, dependent: :destroy
  has_many :diagnosis, dependent: :destroy
end
