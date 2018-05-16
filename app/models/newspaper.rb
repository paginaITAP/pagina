class Newspaper < ApplicationRecord
  belongs_to :admin

  validates :title, :img, :body, presence: true
  validates :title, uniqueness: true
  validates :body, length: { minimum: 20}
end
