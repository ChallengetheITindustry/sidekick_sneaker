class Post < ApplicationRecord
    belongs_to :user
    has_many :post_likes, dependent: :destroy
  # post.liked_users で post を「いいね!」しているユーザーの一覧を取得できるようになる↓
    has_many :liked_users, through: :post_likes, source: :user
    validates :content, presence: true
end
