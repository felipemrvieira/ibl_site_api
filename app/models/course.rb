class Course < ApplicationRecord
  belongs_to :unity
  has_one_attached :featured_image
end
