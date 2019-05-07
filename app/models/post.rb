class Post < ApplicationRecord
  has_many :comments, dependent: :destroy
  validates :body, presence: {message: "post can't be blank"}
end
