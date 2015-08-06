ActiveAdmin.register Project do

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
 permit_params :title, :tech_used, :description, :image

 form do |f|
 	f.inputs "Admin Details" do
      f.input :title
      f.input :tech_used
      f.input :description
      f.input :image, :as => :file
    end
    f.actions
  end


  show do |p|
    attributes_table do
      row :title
      row :tech_used
      row :description
      row :image do
         image_tag(p.image.url)
      end
    end
    active_admin_comments
  end

#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if resource.something?
#   permitted
# end


end
