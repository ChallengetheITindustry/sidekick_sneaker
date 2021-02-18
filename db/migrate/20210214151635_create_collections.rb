class CreateCollections < ActiveRecord::Migration[6.1]
  def change
    create_table :collections do |t|
      t.string :image
      t.string :name
      t.text :explanation

      t.timestamps
    end
  end
end
