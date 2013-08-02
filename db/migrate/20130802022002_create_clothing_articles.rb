class CreateClothingArticles < ActiveRecord::Migration
  def change
    create_table :clothing_articles do |t|
      t.string :name
      t.string :brand
      t.string :size
      t.string :color
      t.string :style
      t.string :category
      t.integer :image_id
      t.integer :user_id

      t.timestamps
    end
  end
end
