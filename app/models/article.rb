class Article < ApplicationRecord
  validates :name, presence: true, length: { minimum: 3, maximum: 50 }
  validates :descreption, presence: true, length: { minimum: 10, maximum: 500 }
  belongs_to :user
end
