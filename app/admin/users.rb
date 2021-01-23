ActiveAdmin.register User do
  permit_params :email, :encrypted_password, :remember_created_at, :sign_in_count, :current_sign_in_at, :last_sign_in_at

  index do
    selectable_column
    column :id
    column :email
    column :last_sign_in_at
    column :sign_in_count
    column :admin
    actions
  end
end
