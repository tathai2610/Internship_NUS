class Album < ApplicationRecord
  validates :title, presence: true, length: {maximum: 140, message: "Title is maximum 140 characters"}
  validates :description, presence: true, length: {maximum: 300, message: "Description is maximum 300 characters"}
  validates :user_id, presence: true
end
