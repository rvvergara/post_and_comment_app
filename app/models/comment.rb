class Comment < ApplicationRecord
  validates :body, presence: true
  belongs_to :comment_morph, polymorphic: true
  has_many :comments, as: :comment_morph
end
