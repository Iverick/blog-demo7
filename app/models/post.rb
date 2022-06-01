class Post < ApplicationRecord
  validates :title, presence:, length: { maximum: 100 }
  validates :body, presence: true, length: { maximum: 3000 }
  belongs_to :user
  has_many :comments, dependent: :destroy
end