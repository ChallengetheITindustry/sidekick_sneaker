class Post < ApplicationRecord
  belongs_to :user
  has_many :post_likes, dependent: :destroy
  has_many :comments, dependent: :destroy
  # post.liked_users で post を「いいね!」しているユーザーの一覧を取得できるようになる↓
  has_many :liked_users, through: :post_likes, source: :user
  validates :content, presence: true
  # post を user が「いいね！」しているときは「true」，「いいね」していないときは「false」↓
  def liked_by?(user)
    post_likes.find_by(user_id: user.id).present?
  end

  mount_uploader :image, ImageUploader
end
