class CreateLobstersAndTrips < ActiveRecord::Migration[5.0]
  def change
    create_table :lobsters_and_trips do |t|
      t.string :trip_result
      t.string :trip_date

      t.timestamps
    end
  end
end
