class CreateComments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|
      t.string :username
      t.string :comment_text
      t.integer :post_id

      t.timestamps
    end
  end
end
