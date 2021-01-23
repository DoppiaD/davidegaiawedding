ActiveAdmin.register Guest do
  permit_params :user_id, :participate, :name, :last_name, :allergies, :shuttle_to, :shuttle_from, :child

  index do
    selectable_column
    column :id
    column :user
    column :participate
    column :name
    column :last_name
    column :allergies
    column :shuttle_to
    column :shuttle_from
    column :child
    actions
  end

end
