class News < ApplicationRecord
    belongs_to :company
    validates :body, presence: true, uniqueness: false
    validates :title, presence: true, uniqueness: false, length: {maximum: 20}
    has_one_attached :image
end
