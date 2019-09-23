class Donate < ApplicationRecord
  belongs_to :company
  
  validates :cost, presence: true, uniqueness: false, numericality: {only_real: true}
  validates :body, presence: true, uniqueness: false, length: {minimum: 10, maximum: 240}
  validates :title, presence: true, uniqueness: false, length: {minimum: 10, maximum: 30}
  
end
