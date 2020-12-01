class CreateRecipes < ActiveRecord::Migration[5.2]
  def change
    create_table :recipes do |t|
      t.string :dish
      t.string :image
      t.integer :serves
      t.integer :time
      t.string :ingredients, :array => true
      t.string :method, :array => true
      t.integer :user_id

      t.timestamps
    end
  end
end
