class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.text :about
      t.boolean :football
      t.boolean :hurling
      t.integer :profileable_id
      t.string :profileable_type

      t.timestamps
    end
  end
end
