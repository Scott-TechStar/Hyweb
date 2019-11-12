class Recipe < ApplicationRecord
  has_one_attached :image
  has_many :ingridients, dependent: :destroy
  has_many :comments, as: :commentable
  accepts_nested_attributes_for :ingridients, allow_destroy: true

  has_many :steps, dependent: :destroy
  accepts_nested_attributes_for :steps, allow_destroy: true

  belongs_to :category
  belongs_to :user

  after_validation :set_slug , only: [:create, :update]

  def to_param
    "#{id}-#{slug}"
  end


end