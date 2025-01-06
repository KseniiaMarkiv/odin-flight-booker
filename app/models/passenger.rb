class Passenger < ApplicationRecord
  belongs_to :booking

  validates :name, :email, presence: true
  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }
end
