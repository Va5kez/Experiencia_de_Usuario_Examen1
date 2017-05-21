class Payment < ApplicationRecord
  belongs_to :loan
  validates :amount , numericality: { greater_than: 0}
end
