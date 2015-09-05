class CreateSuperPeople < ActiveRecord::Migration
  def change
    create_table :super_people do |t|
      t.string :name
      t.boolean :gender
      t.integer :nemesis_id
      t.boolean :has_cape
      t.string :location
      t.string :weakness
      t.boolean :is_hero
      t.text :description

      t.timestamps null: false
    end
  end
end
