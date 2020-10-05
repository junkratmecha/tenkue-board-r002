class Post < ApplicationRecord
  belongs_to :user
  has_many :comments, dependent: :destroy
  has_many :likes, dependent: :destroy
  validates :content, {length: { maximum: 140 }, presence: true}
end