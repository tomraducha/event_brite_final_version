class Event < ApplicationRecord
  belongs_to :admin, foreign_key: 'admin_id', class_name: 'User'

  has_many :attendances
  has_many :users, through: :attendances
  has_one_attached :picture_event
end
