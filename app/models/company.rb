class Company < ApplicationRecord

  validates :discription, presence: true, uniqueness: false
  validates :goal, presence: true, uniqueness: false, numericality: {only_real: true}
  validates :short_discription, presence: true, uniqueness: false
  validates :title, presence: true, uniqueness: false
  
end
