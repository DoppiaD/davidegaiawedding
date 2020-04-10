class CreateHoneymoons < ActiveRecord::Migration[6.0]
  def change
    create_table :honeymoons do |t|
      t.references :user, null: false, foreign_key: true
      t.references :registry, null: false, foreign_key: true

      t.timestamps
    end
  end
end
