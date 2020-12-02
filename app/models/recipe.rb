class Recipe < ApplicationRecord
  belongs_to :user, :optional => true
  has_and_belongs_to_many :cookbooks

  validates :dish, presence: true
  validates :ingredients, presence: true
  validates :method, presence: true
end
