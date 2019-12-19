class PostSerializer < ActiveModel::Serializer
  attributes :id, :body
  has_one :blog
  has_many :tags
end
