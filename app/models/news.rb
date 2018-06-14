class News < ApplicationRecord
  belongs_to :admin
  has_many :comments

  validates :title, :img, :body, :category, presence: true
  validates :title, uniqueness: true
  validates :body, length: { minimum: 20}
end
