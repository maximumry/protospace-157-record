class Prototype < ApplicationRecord
  belongs_to :user
  has_many :comments
  has_one_attached :image

  validates :proto_name, presence: true
  validates :catch_copy, presence: true
  validates :concept, presence: true
  validates :image, presence: true
end
