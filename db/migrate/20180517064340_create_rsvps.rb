class CreateRsvps < ActiveRecord::Migration[5.2]
  def change
    create_table :rsvps do |t|
      t.string :user_id
      t.string :activity_id
      t.string :attendance

      t.timestamps
    end
  end
end
