class UnitySerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :site
  has_many :addresses
  has_many :phones
  has_many :social_networks
  has_many :pre_registrations
  has_many :courses
end
