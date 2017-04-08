class Profile < ApplicationRecord
  has_many :favorite_place
  belongs_to :user
  # validates :first_name, presence:true
  # validates :last_name, presence:true
  # validates :last_name, presence:true
  # validates :birth_date, presence:true
  # validates :is_host, presence:true
  # validates :gender, presence:true

    mount_uploader :photo, PhotoUploader
end
