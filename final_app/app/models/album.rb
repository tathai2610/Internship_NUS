class Album < ApplicationRecord
  belongs_to :user, counter_cache: true
  has_and_belongs_to_many :photos

  validates :title, presence: true, length: {maximum: 140, message: "Title is maximum 140 characters"}
  validates :description, presence: true, length: {maximum: 300, message: "Description is maximum 300 characters"}
  validates :shared, inclusion: { in: [true, false]}

  before_validation :check_description, :check_title

  private
    def check_description
      unless description.present?
        self.description = "This album of user who has id #{user_id}"
      end
    end
    def check_title
      unless title.present?
        self.title = "Album of user #{user_id}"
      end
    end
end
