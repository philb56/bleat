class Restaurant < ApplicationRecord
  validates :name, presence: true
  validates :description, presence: true
  has_many :reviews
  belongs_to :owner, class_name: 'User', foreign_key: 'owner_id'
end
