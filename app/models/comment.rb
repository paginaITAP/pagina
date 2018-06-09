class Comment < ApplicationRecord
  belongs_to :admin

  belongs_to :news

end
