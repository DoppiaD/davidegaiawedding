class CreateGuests < ActiveRecord::Migration[6.0]
  def change
    create_table :guests do |t|
      t.references :user, foreign_key: true
      t.boolean :participate
      t.string :name
      t.string :last_name
      t.text :allergies
      t.boolean :shuttle_to
      t.boolean :shuttle_from
      t.boolean :child

      t.timestamps
    end
  end
end
