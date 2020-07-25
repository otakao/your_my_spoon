class Post < ApplicationRecord
  belongs_to :user
  has_many :category, dependent: :destroy
  has_many :images, dependent: :destroy
  has_many :favorites, dependent: :destroy

  with_options presence: true do
    validates :title
    validates :description
    validates :prefecture
    

  end
end
