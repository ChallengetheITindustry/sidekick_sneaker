class Post < ApplicationRecord
    belongs_to :user
    has_many :post_likes, dependent: :destroy
    validates :content, presence: true
end
