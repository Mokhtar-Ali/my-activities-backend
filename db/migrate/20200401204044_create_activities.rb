class CreateActivities < ActiveRecord::Migration[6.0]
  def change
    create_table :activities do |t|
      t.string :name
      t.string :image, default: 'https://static.collectui.com/shots/3986943/flower-pattern-large'
      t.string :address
      t.text :about
      t.string :date
      t.integer :user_id
      t.integer :category_id
      t.string :lat
      t.string :lng


      t.timestamps
    end
  end
end
 