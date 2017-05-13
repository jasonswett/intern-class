class CreateMenuItems < ActiveRecord::Migration[5.1]
  def change
    create_table :menu_items do |t|
      t.string :name, null: false
      t.references :restaurant, foreign_key: true, null: false

      t.timestamps
    end

    add_index :menu_items, [:name, :restaurant_id], unique: true
  end
end
