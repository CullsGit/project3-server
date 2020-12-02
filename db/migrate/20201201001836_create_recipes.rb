class CreateRecipes < ActiveRecord::Migration[5.2]
  def change
    create_table :recipes do |t|
      t.string :dish
      t.string :image, default: 'https://upload.wikimedia.org/wikipedia/commons/thumb/6/6d/Good_Food_Display_-_NCI_Visuals_Online.jpg/1920px-Good_Food_Display_-_NCI_Visuals_Online.jpg'
      t.integer :serves
      t.integer :time
      t.string :ingredients, :array => true
      t.string :method, :array => true
      t.integer :user_id

      t.timestamps
    end
  end
end
