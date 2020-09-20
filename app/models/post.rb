class Post < ApplicationRecord

  belongs_to :user

  has_many :likes, dependent: :destroy
  
  validates :content, {length: { maximum: 140 }, presence: true}
  
end
