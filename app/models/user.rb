class User < ApplicationRecord
  has_many :posts, dependent: :destroy
  has_many :post_likes, dependent: :destroy
   # user.liked_posts で user が「いいね!」しているメッセージの一覧を取得できるようになる↓
  has_many :liked_posts, through: :post_likes, source: :post
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         mount_uploader :image, ImageUploader
end
