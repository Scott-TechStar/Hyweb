class CreateSteps < ActiveRecord::Migration[5.2]
  def change
    create_table :steps do |t|
      t.text :direction
      t.belongs_to :recipe, foreign_key: true

      t.timestamps
    end
  end
end
