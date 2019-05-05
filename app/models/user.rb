class User < ApplicationRecord

  has_many :posts
  has_many :comments

  validates :name, :user_name, :last_name, :email, presence: true
  validates :email, uniqueness: {case_sensitive: true}
  validates :email, format: { with: /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i,
    message: "write a valid email format" }

end
