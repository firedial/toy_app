class User < ApplicationRecord
  has_many :micoroposts
  validates :name, presence: true
  validates :email, presence: true
end
