class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.string :title
      t.text :thumbnail
      t.text :content
      t.integer :user_id
      t.integer :team_id

      t.timestamps
    end
  end
end
