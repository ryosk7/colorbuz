class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.text :user_image
      t.integer :team_id
      t.boolean :cb_owner
      t.integer :post_id

      t.timestamps
    end
  end
end
