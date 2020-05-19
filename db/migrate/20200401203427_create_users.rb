class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :username
      t.string :password_digest
      t.string :city
      t.string :image, default: 'https://www.sackettwaconia.com/wp-content/uploads/default-profile.png'

      t.timestamps
    end
  end
end
