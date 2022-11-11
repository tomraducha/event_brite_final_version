class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :events, foreign_key: 'admin_id', class_name: 'Event'
  has_many :attendances
  has_many :events, through: :attendances
  has_one_attached :avatar

  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable
end
