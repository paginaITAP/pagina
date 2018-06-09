class News < ApplicationRecord
  belongs_to :admin
  belongs_to :user
  has_many :comments


  validates :title, :img, :body, presence: true
  validates :title, uniqueness: true
  validates :body, length: { minimum: 20}
end
