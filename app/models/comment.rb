class Comment < ApplicationRecord
  
  belongs_to :company
  validates :body, presence: true, uniqueness: false, length: {minimum: 20}
end
