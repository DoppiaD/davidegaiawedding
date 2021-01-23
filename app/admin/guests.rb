ActiveAdmin.register Guest do
  permit_params :user_id, :participate, :name, :last_name, :allergies, :shuttle_to, :shuttle_from, :child, :avatar

  index do
    selectable_column
    column :id
    column :user
    column :participate
    column :name
    column :last_name
    column :allergies
    column "Shuttle to Venue", :shuttle_to
    column "Shuttle to Hotel", :shuttle_from
    column :child
    actions
  end

end
