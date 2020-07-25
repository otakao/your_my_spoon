class User < ApplicationRecord
  has_many :posts, dependent: :destroy
  has_many :favorites, dependent: :destroy
  has_one :address
  has_many :comment, dependent: :destroy

  validates :nickname, :last_name, :first_name, :last_name_furigana, :first_name_furigana, :birthday, presence: true
  validates :last_name, :first_name, format: { with: /\A[ぁ-んァ-ヶー一-龠]+\z/}
  validates :last_name_furigana, :first_name_furigana, format: { with: /\A[あ-ん゛゜ぁ-ぉゃ-ょー]+\z/}
  validates :email, format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i}

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
