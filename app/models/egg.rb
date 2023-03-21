class Egg < ApplicationRecord
  validates :size, presence: true, uniqueness: true
end
