class CreateWorkChunks < ActiveRecord::Migration[6.0]
  def change
    create_table :work_chunks do |t|
      t.integer :duration

      t.timestamps
    end
  end
end
