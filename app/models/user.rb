class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
   has_many :news
   has_many :newspaper
   has_many :video
   has_many :photo
   has_many :teacher

   has_many :comments
end
