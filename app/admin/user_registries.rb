ActiveAdmin.register UserRegistry do
  permit_params :user_id, :registry_id

  index do
    selectable_column
    column :user
    column :registry
    column("Activity"){|u| u.registry.activity }
    actions
  end
end
