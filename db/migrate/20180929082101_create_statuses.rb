class CreateStatuses < ActiveRecord::Migration[5.2]
  def change
    create_table :statuses do |t|
      t.integer :level
      t.integer :experience_point
      t.integer :gold
      t.integer :user_id
      t.timestamps
    end
  end
end
