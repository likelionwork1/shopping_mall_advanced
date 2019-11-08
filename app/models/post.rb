class Post < ApplicationRecord
    has_many :comments
    has_one_attached :avatar
    has_many :hearts
    has_many :users, through: :hearts
end
