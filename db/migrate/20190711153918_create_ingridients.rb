class CreateIngridients < ActiveRecord::Migration[5.2]
  def change
    create_table :ingridients do |t|
      t.text :content
      t.belongs_to :recipe, foreign_key: true

      t.timestamps
    end
  end
end
