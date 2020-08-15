class User < ApplicationRecord
  has_many :posts, dependent: :destroy
  has_many :favorites, dependent: :destroy
  has_one :shop
  has_one :address 
  has_many :comments, dependent: :destroy
  has_many :user_images, dependent: :destroy

  validates :nickname, presence: true
  validates :email, format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i}

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
