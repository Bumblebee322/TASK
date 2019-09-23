class Company < ApplicationRecord
  has_many :comments
  has_many :news 
  has_many :donates
  has_many :taggings
  has_many :tags, through: :taggings

  has_many_attached :images 

  validates :discription, presence: true, uniqueness: false, length: {minimum: 120}
  validates :goal, presence: true, uniqueness: false, numericality: {only_real: true}
  validates :short_discription, presence: true, uniqueness: false, length: {minimum: 10, maximum: 240}
  validates :title, presence: true, uniqueness: false
  validates :deadline, presence: true
  

  def all_tags
    self.tags.map(&:name).join(', ')
  end

  def all_tags=(names)
    self.tags = names.split(',').map do |name|
      Tag.where(name: name.strip).first_or_create!
    end
  end
  
end
