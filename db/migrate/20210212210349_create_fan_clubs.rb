class CreateFanClubs < ActiveRecord::Migration[6.1]
  def change
    create_table :fan_clubs do |t|
      t.references :team, null: false, foreign_key: true
      t.string :name
      t.string :location

      t.timestamps
    end
  end
end
