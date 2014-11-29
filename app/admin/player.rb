ActiveAdmin.register Player do
  index do
    column :photo do |r|
        image_tag(r.photo.url(:small), width: "50", height: "50")
    end
    column :name
    column :club
    column :number
    column :dob
    column :position
    column :nation
    actions
  end

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  permit_params :name, :dob, :nation, :number, :height, :weight, :position, :leg, :level, :club_id, :photo
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
    f.input :number
    f.input :position
    f.input :dob, as: :datepicker, start_year: 150, end_year: 2000
    f.input :nation
    f.input :height
    f.input :weight
    f.input :leg
    f.input :level
    f.input :club
    f.input :photo, :as => :file
  end
  f.actions
  end

  show do |ad|
  attributes_table do
    row :name
    row :number
    row :position
    row :dob
    row :nation
    row :height
    row :weight
    row :leg
    row :level
    row :club
    row :photo do
      image_tag(ad.photo.url(:small))
    end
    # Will display the image on show object page
  end
 end


end
