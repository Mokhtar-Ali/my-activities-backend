class CreateChatrooms < ActiveRecord::Migration[6.0]
  def change
    create_table :chatrooms do |t|
      t.integer :activity_id

      t.timestamps
    end
  end
end
