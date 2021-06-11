class Food < ApplicationRecord
  belongs_to :user
  has_many :likes, dependent: :destroy
  has_many :liked_by, through: :likes, source: :user
  validates :name, presence: true
  mount_uploader :image, ImageUploader

  def liked_by?(current_user)
    likes.exists?(user_id: current_user.id)
  end
end
