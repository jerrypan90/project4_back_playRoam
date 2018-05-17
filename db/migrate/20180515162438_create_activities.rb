class CreateActivities < ActiveRecord::Migration[5.2]
  def change
    create_table :activities do |t|
      t.string :user_id
      t.string :title
      t.string :genre
      t.string :date
      t.string :start_time
      t.string :end_time
      t.string :venue
      t.string :max_pax
      t.string :current_pax

      t.timestamps
    end
  end
end
