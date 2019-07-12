class Recipe < ApplicationRecord
  has_many :ingridients, dependent: :destroy
  accepts_nested_attributes_for :ingridients, allow_destroy: true

  has_many :steps, dependent: :destroy
  accepts_nested_attributes_for :steps, allow_destroy: true
end