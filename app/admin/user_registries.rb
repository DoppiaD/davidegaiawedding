ActiveAdmin.register UserRegistry do
  permit_params :user_id, :registry_id

  index do
    selectable_column
    column :user
    column :registry
    actions
  end
end
