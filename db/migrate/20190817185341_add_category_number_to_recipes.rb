class AddCategoryNumberToRecipes < ActiveRecord::Migration[5.2]
  def change
    add_column :recipes, :category_id, :integer
  end
end
