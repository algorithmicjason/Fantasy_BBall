class CreateMascots < ActiveRecord::Migration[6.1]
  def change
    create_table :mascots do |t|
      t.references :team, null: false, foreign_key: true
      t.string :name
      t.string :character
      t.text :bio

      t.timestamps
    end
  end
end
