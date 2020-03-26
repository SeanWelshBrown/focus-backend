class CreateFocusSessions < ActiveRecord::Migration[6.0]
  def change
    create_table :focus_sessions do |t|
      t.string :start_time
      t.string :end_time
      t.integer :duration
      t.string :work_chunks
      t.string :break_chunks
      t.string :focus_type
      t.string :note
      t.integer :user_id

      t.timestamps
    end
  end
end
