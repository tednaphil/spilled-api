class CreateTeas < ActiveRecord::Migration[7.1]
  def change
    create_table :teas do |t|
      t.string :name
      t.string :slug
      t.text :image
      t.text :origin
      t.string :type
      t.string :caffeine
      t.string :caffeineLevel
      t.text :description
      t.text :colorDescription
      t.text :tasteDescription

      t.timestamps
    end
  end
end
