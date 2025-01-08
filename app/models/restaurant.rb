class Restaurant < ApplicationRecord
  validates :category, :name, :address, presence: true
  validates :category, inclusion: { in: %w[chinese italian japanese french belgian], message: "%{value} is not a valid category" }
  has_many :reviews, dependent: :destroy
end

# ["chinese", "italian", "japanese", "french", "belgian"]
# class Coffee < ApplicationRecord
#   validates :size, inclusion: { in: %w(small medium large),
#     message: "%{value} is not a valid size" }
# end
