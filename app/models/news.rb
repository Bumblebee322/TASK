class News < ApplicationRecord
    
    belongs_to :company

    has_one_attached :image

    validates :body, presence: true, uniqueness: false,length: {maximum: 20}
    validates :title, presence: true, uniqueness: false, length: {maximum: 20}
    
end
