class RenameHoneymoons < ActiveRecord::Migration[6.0]
  def change
    rename_table :honeymoons, :user_registries
  end
end
