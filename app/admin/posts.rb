ActiveAdmin.register Post do
  permit_params :content, :user
end
