class DropLobstersAndTrips < ActiveRecord::Migration[5.0]
  def change
    drop_table :lobsters_and_trips
  end
end
