class CreateAthletes < ActiveRecord::Migration[6.1]
  def change
    create_table :athletes do |t|
      t.references :team, null: false, foreign_key: true
      t.string :name
      t.string :position
      t.integer :jersey
      t.integer :height
      t.integer :years_of_experience
      t.integer :championships

      t.timestamps
    end
  end
end
