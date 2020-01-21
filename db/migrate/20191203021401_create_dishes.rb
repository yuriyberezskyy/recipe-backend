class CreateDishes < ActiveRecord::Migration[6.0]
  def change
    create_table :dishes do |t|
      t.string :name_of_dish
      t.string :description
      t.string :country
      t.string :img
      t.integer :like
      t.belongs_to :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
