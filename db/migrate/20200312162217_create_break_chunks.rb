class CreateBreakChunks < ActiveRecord::Migration[6.0]
  def change
    create_table :break_chunks do |t|
      t.integer :duration

      t.timestamps
    end
  end
end
