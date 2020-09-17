class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.string :title
      t.string :image_url
      t.string :description
      t.string :size
      t.float :price
      t.integer :likes
      t.string :availability
      t.integer :category_id

      t.timestamps
    end
  end
end
