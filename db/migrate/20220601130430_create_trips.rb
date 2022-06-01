class CreateTrips < ActiveRecord::Migration[6.1]
  def change
    create_table :trips do |t|
      t.string :starting_point, null: false
      t.string :ending_point, null: false
      t.date :date, null: false
      t.time :time, null: false
      t.string :status, default: "En cours"
      t.string :transport, null: false
      t.references :user, null: false, foreign_key: true
      t.references :chatroom, null: false, foreign_key: true
      t.timestamps
    end
  end
end
