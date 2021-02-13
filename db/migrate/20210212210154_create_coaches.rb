class CreateCoaches < ActiveRecord::Migration[6.1]
  def change
    create_table :coaches do |t|
      t.references :team, null: false, foreign_key: true
      t.string :name
      t.integer :age
      t.text :bio
      t.integer :years_of_experience
      t.integer :championships

      t.timestamps
    end
  end
end
