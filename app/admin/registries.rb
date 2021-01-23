ActiveAdmin.register Registry do
  permit_params :activity, :description, :perk, :value

  index do
    selectable_column
    column :id
    column :activity
    column :description
    column :perk
    column :value
    actions
  end
end
