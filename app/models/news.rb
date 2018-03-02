class News < ApplicationRecord
  validates :title, :img, :body, presence: true
  validates :title, uniqueness: true
  validates :body, length: { minimum: 20}
end
