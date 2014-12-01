ActiveAdmin.register Member, as: "Group" do
  index do
    column :photo do |r|
        image_tag(r.photo.url(:small), width: "50", height: "50")
    end
    column :name
    column :student_id
    column :email
    column :idol
    actions
  end

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  permit_params :name, :student_id, :email, :phone, :idol, :role, :photo
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
    f.input :name
    f.input :student_id
    f.input :role
    f.input :email
    f.input :phone
    f.input :idol
    f.input :photo, :as => :file
  end
  f.actions
  end

  show do |ad|
  attributes_table do
    row :name
    row :student_id
    row :role
    row :email
    row :phone
    row :idol
    row :photo do
      image_tag(ad.photo.url(:small))
    end
    # Will display the image on show object page
  end
 end

end
