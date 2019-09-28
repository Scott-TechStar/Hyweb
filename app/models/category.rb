class Category < ApplicationRecord
  has_one_attached :image
  has_many :recipes
  
  after_validation :set_slug , only: [:create, :update]

  def to_param
    "#{id}-#{slug}"
  end

end
