class Post < ApplicationRecord

  belongs_to :user

  has_many :likes
  
  validates :content, {length: { maximum: 140 }, presence: true}
  
end
