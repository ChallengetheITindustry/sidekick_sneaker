class CreateLikeLists < ActiveRecord::Migration[6.1]
  def change
    create_table :like_lists do |t|
      t.string :name
      t.references :user_id
      t.references :sneaker_id

      t.timestamps
    end
  end
end
