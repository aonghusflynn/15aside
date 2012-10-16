class CreateVenues < ActiveRecord::Migration
  def change
    create_table :venues do |t|
      t.float :lat
      t.float :long

      t.timestamps
    end
  end
end
