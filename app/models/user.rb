class User < ApplicationRecord
  validates :name, presence: true, length: {maximum: 20}
  validates :email, presence: true

  has_many :posts
  has_many :comments, as: :comment_morph
end
