class CreateTrips < ActiveRecord::Migration[5.0]
  def change
    create_table :trips do |t|
      t.string :result
      t.string :date

      t.timestamps
    end
  end
end
