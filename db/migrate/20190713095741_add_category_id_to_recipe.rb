class AddCategoryIdToRecipe < ActiveRecord::Migration[5.2]
  def change
    add_column :recipes, :category_id, :bigint
  end
end
