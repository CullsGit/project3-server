class CreateCookbooksRecipes < ActiveRecord::Migration[5.2]
  def change
    create_table :cookbooks_recipes, :id => false do |t|
      t.integer :cookbook_id
      t.integer :recipe_id
    end
  end
end
