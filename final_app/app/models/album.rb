class Album < ApplicationRecord
  belongs_to :user
  has_and_belongs_to_many :photos

  has_many :likes, as: :likeable

  validates :title, presence: true, length: {maximum: 140, message: "Title is maximum 140 characters"}, length: {minimum: 10, message: "Title is minimum 10 characters"}
  validates :description, presence: true, length: {maximum: 300, message: "Description is maximum 300 characters"}
  validates :shared, inclusion: { in: [true, false]}

  before_validation :check_description

  private
    def check_description
      unless description.present?
        self.description = "This album of user who has id #{user_id}"
      end
    end

end
