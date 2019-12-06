class CreatePosts < ActiveRecord::Migration[5.0]
  def change
    create_table :posts do |t|
      t.string  :title
      t.integer :user_id, null: false
      t.string  :tags, array: true

      t.timestamps
    end
  end
end