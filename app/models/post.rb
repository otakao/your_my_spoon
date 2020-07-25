class Post < ApplicationRecord
  belongs_to :user, optional: true
  belongs_to :category, optional: true
  has_many :images, dependent: :destroy
  has_many :favorites, dependent: :destroy

  with_options presence: true do
    validates :title
    validates :description
    validates :date
    validates :category_id
    validates :price
    validates :condition
    validates :images
    validates :delivery_date
    validates :delivery_place
    

  end
end
