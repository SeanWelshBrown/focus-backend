class CreateFocusSessions < ActiveRecord::Migration[6.0]
  def change
    create_table :focus_sessions do |t|
      t.string :start_time
      t.string :end_time
      t.string :work_chunks
      t.string :break_chunks
      t.integer :duration
      t.string :focus_type
      t.string :notes
      t.integer :user_id

      t.timestamps
    end
  end
end
