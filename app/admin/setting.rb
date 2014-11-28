ActiveAdmin.register Setting, as: "Site Setting" do


  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  permit_params :facebook, :twitter, :googleplus, :data_source, :footer_text, :banner_home, :banner_single, :banner_search
  #
  # or
  #
  # permit_params do
  #   permitted = [:permitted, :attributes]
  #   permitted << :other if resource.something?
  #   permitted
  # end
    form :html => { :enctype => "multipart/form-data" } do |f|
   f.inputs "Details" do
    f.input :facebook
    f.input :twitter
    f.input :googleplus
    f.input :data_source
    f.input :footer_text
    f.input :banner_home, :as => :file
    f.input :banner_single, :as => :file
    f.input :banner_search, :as => :file
  end
  f.actions
  end

  show do |ad|
  attributes_table do
    row :facebook
    row :twitter
    row :googleplus
    row :data_source
    row :footer_text
    row :banner_home do
      image_tag(ad.banner_home.url(:small))
    end
    row :banner_single do
      image_tag(ad.banner_single.url(:small))
    end
    row :banner_search do
      image_tag(ad.banner_search.url(:small))
    end
  end
 end

end
