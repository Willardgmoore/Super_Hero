class CreateAbilities < ActiveRecord::Migration
  def change
    create_table :abilities do |t|
      t.string :name
      t.integer :super_id
      t.text :description

      t.timestamps null: false
    end
  end
end
