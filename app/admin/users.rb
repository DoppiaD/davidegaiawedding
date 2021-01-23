ActiveAdmin.register User do
  form do |f|
    f.inputs "Identity" do
      f.input :email
      f.input :password
    end
    f.actions
  end

  permit_params :email, :password

  index do
    selectable_column
    column :id
    column :email
    column :last_sign_in_at
    column :sign_in_count
    column :admin
    actions
  end

  preserve_default_filters!
  filter :sign_in_count
end
