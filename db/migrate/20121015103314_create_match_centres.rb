class CreateMatchCentres < ActiveRecord::Migration
  def change
    create_table :match_centres do |t|
      t.string :name
      t.datetime :start_time

      t.timestamps
    end
  end
end
