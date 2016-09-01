class Category < ApplicationRecord
  has_many :cps
  has_many :posts, through: :cps
end

