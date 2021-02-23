class CreateCollections < ActiveRecord::Migration[6.1]
  def change
    create_table :collections do |t|
      t.string :image
      t.string :name
      t.text :explanation
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
