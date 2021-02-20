class CreateLikeLists < ActiveRecord::Migration[6.1]
  def change
    create_table :like_lists do |t|
      t.string :list_name
      t.reference :user_id
      t.reference :sneaker_id

      t.timestamps
    end
  end
end
