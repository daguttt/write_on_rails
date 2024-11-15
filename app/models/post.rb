class Post < ApplicationRecord
  enum :status, [ :draft, :pending, :published, :unpublished ]
  belongs_to :user
  belongs_to :category
end
