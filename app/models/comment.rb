class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :post

  validates :conmment, {length: { maximum: 140 }, presence: true}
end
