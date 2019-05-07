class Comment < ApplicationRecord
  belongs_to :post
  validates :body, presence: {message: "comment can't be blank"}
end
