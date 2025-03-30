include ActionView::Helpers::UrlHelper
include Rails.application.routes.url_helpers

ActiveAdmin.register Customer do
   permit_params :full_name, :phone, :email, :notes, :image

   form do |f|
    f.inputs 'Customer Details' do
      f.input :full_name
      f.input :phone
      f.input :email
      f.input :notes
      f.input :image, as: :file
    end
    f.actions
   end

   show do
    attributes_table do
      row :full_name
      row :phone
      row :email
      row :notes
      row :image do |customer|
        if customer.image.attached?
          image_tag url_for(customer.image), height: "150"
        else
          "No image found"
        end
      end
    end
   end
end
