class Patient < ApplicationRecord
  has_many :visits
  has_many :doctors, through: :visits

  def short_name
    "#{full_name.split[0]} #{full_name.split[0][0]}.#{full_name.split[1][0]}."
  end
end
