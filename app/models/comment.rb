class Comment < ApplicationRecord
  validates :email, presence: true
  validates :comment, presence: true
  belongs_to :article
end
