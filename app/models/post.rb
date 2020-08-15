class Post < ApplicationRecord
  belongs_to :user, optional: true
  belongs_to :category, optional: true
  has_many :images, dependent: :destroy
  accepts_nested_attributes_for :images, allow_destroy: true
  has_many :favorites, dependent: :destroy

  with_options presence: true do
    validates :title
    validates :description
    validates :category_id
    validates :price
    validates :condition
    validates :images
    validates :delivery_date
    validates :delivery_place

    

  end
end
