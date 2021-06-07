class Food < ApplicationRecord
  belongs_to :user
  varidates :name, presence: true
end
