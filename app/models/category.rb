class Category < ApplicationRecord
  has_many :Categories, dependent: :destroy
end
