class CreateMeditationSessions < ActiveRecord::Migration[6.0]
  def change
    create_table :meditation_sessions do |t|
      t.string :start_time
      t.string :end_time
      t.string :length
      t.string :mood
      t.string :notes

      t.timestamps
    end
  end
end
