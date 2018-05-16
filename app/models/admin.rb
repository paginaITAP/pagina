class Admin < ActiveRecord::Base
  devise :database_authenticatable, :trackable, :timeoutable, :lockable

  has_many :news
  has_many :newspaper
  has_many :video
  has_many :photo
  has_many :teacher

end
