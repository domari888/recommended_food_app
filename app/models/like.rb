class Like < ApplicationRecord
  belongs_to :user
  belongs_to :food
  validates :user_id, uniqueness: {scope: :user_id}
end
