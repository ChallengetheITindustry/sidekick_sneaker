class Collection < ApplicationRecord
  # デフォルトの画像が表示されてしまう原因！！修正する
  # コレクション投稿画面へのリンクをクリックした瞬間にデフォルトの画像が追加されてしまう。
  mount_uploader :image, ImageUploader
end
