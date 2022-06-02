class Post < ApplicationRecord
  validates :title, presence:, length: { maximum: 100 }
  validates :body, presence: true
  belongs_to :user
  has_many :comments, dependent: :destroy

  has_rich_text :body
  has_one :content, class_name: 'ActionText::RichText', as: :record, dependent: :destroy
end