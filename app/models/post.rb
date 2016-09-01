class Post < ApplicationRecord
  belongs_to :user
  has_many :cps
  has_many :categories, through: :cps
end
