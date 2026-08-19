class User < ApplicationRecord
  has_many :articles, dependent: :destroy
  validates :name, presence: true, length: { minimum: 3, maximum: 25 }
  validates :email, presence: true, length: { minimum: 3, maximum: 25 }
  
  has_secure_password
end