class CreateFocusSessions < ActiveRecord::Migration[6.0]
  def change
    create_table :focus_sessions do |t|
      t.string :start_time
      t.string :end_time
      t.string :focus_type
      t.string :notes

      t.timestamps
    end
  end
end
