class CreateCollections < ActiveRecord::Migration[6.1]
  def change
    create_table :collections do |t|
      t.string :image, null: false
      t.string :name, null: false
      t.text :explanation

      t.timestamps
    end
  end
end
