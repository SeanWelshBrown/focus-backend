class CreateMeditationSessions < ActiveRecord::Migration[6.0]
  def change
    create_table :meditation_sessions do |t|
      t.string :start_time
      t.string :end_time
      t.string :duration
      t.string :note
      t.string :mood
      t.integer :user_id

      t.timestamps
    end
  end
end
