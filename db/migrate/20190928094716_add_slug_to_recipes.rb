class AddSlugToRecipes < ActiveRecord::Migration[5.2]
  def change
    add_column :recipes, :slug, :string
  end
end
