class CreateRegistries < ActiveRecord::Migration[6.0]
  def change
    create_table :registries do |t|
      t.string :activity
      t.text :description
      t.text :perk
      t.integer :value

      t.timestamps
    end
  end
end
