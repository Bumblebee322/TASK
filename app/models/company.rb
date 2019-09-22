class Company < ApplicationRecord
  has_many :comments
  has_many :news 
  has_many :donates
  
  has_many_attached :images 

  validates :discription, presence: true, uniqueness: false#, length: {minimum: 120}
  validates :goal, presence: true, uniqueness: false, numericality: {only_real: true}
  validates :short_discription, presence: true, uniqueness: false#, length: {minimum: 120, maximum: 1024}
  validates :title, presence: true, uniqueness: false
  validates :deadline, presence: true
  
  
end
