class CreateGuests < ActiveRecord::Migration[6.0]
  def change
    create_table :guests do |t|
      t.references :user, foreign_key: true
      t.boolean :participate, null: false, default: false
      t.string :name
      t.string :last_name
      t.text :allergies
      t.boolean :shuttle_to, null: false, default: false
      t.boolean :shuttle_from, null: false, default: false
      t.boolean :child, null: false, default: false

      t.timestamps
    end
  end
end
