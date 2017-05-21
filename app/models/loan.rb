class Loan < ApplicationRecord
  has_many :payment
  validates_presence_of :client_name
  validates :amount , numericality: { greater_than_or_equal_to: 5000}
end
