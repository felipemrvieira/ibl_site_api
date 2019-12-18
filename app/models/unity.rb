class Unity < ApplicationRecord
  has_many :addresses
  has_many :phones
  has_many :social_networks
  has_many :courses
  has_many :pre_registrations
  has_one_attached :featured_image
end
