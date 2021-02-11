ActiveAdmin.register User do
  permit_params :name, :email, :encrypted_password, :introduction
end
