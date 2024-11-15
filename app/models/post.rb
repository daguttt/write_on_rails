class Post < ApplicationRecord
  enum :status, [ :draft, :pending, :published, :unpublished ]
  belongs_to :user
  belongs_to :category
  has_many :comments

  validates :title, :content, :status, presence: true
  validates :title, length: { maximum: 255 }
  validates :content, length: { minimum: 15 }
  validates :status, inclusion: { in: %w[draft pending published unpublished] }
end
