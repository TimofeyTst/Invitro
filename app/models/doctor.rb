class Doctor < ApplicationRecord
  belongs_to :speciality, foreign_key: :specialty_id
  has_many :visits
  has_many :patients, through: :visits

  def short_name
    "#{full_name.split[0]} #{full_name.split[0][0]}.#{full_name.split[1][0]}."
  end
end
