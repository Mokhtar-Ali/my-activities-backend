class CreateCategories < ActiveRecord::Migration[6.0]
  def change
    create_table :categories do |t|
      t.string :category_type
      t.string :image
      t.string :about

      t.timestamps
    end
  end
end
