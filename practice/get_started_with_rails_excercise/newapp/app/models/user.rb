class User < ApplicationRecord
  has_many :albums
  has_many :photos

  has_many :follower_follows, foreign_key: :followee_id, class_name: "Follow"
  has_many :followers, through: :follower_follows, source: :follower

  has_many :followee_follows, foreign_key: :follower_id, class_name: "Follow"
  has_many :follwees, through: :followee_follows, source: :followee

  validates :firstname, presence: true, length: {maximum: 25, message: "First name is maximum 25 characters"}
  validates :firstname, format: { with: /\A[a-zA-Z]+\z/, message: "First name should contain only letters"}

  validates :lastname, presence: true, length: {maximum: 25, message: "Last name is maximum 25 characters"}
  validates :lastname, format: { with: /\A[a-zA-Z]+\z/, message: "Last name should contain only letters"}

  validates :email, uniqueness: true, presence: true, email: true, length: {maximum: 255, message: "Email is maximum 255 characters"}

  validates :password, presence: true, length: {maximum: 64, message: "Password is maximum 64 characters"}
end
