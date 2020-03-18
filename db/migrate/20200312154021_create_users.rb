class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :username
      t.string :password_digest
      t.string :profile_pic
      t.integer :time_meditated
      t.integer :time_focused

      t.timestamps
    end
  end
end
