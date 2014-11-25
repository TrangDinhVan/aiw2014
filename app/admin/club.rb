ActiveAdmin.register Club do


  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # permit_params :list, :of, :attributes, :on, :model
  permit_params :name, :nick_name, :coach, :year, :stadium, :volume, :location, :president, :photo, :host, :away
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
    f.input :nick_name
    f.input :coach
    f.input :year
    f.input :stadium
    f.input :volume
    f.input :location
    f.input :photo, :as => :file
    f.input :host, :as => :file
    f.input :away, :as => :file
  end
  f.actions
  end

  show do |ad|
  attributes_table do
    row :name
    row :nick_name
    row :coach
    row :year
    row :stadium
    row :volume
    row :location
    row :host do
      image_tag(ad.host.url(:small))
    end
    row :away do
      image_tag(ad.away.url(:small))
    end
    row :photo do
      image_tag(ad.photo.url(:small))
    end
    # Will display the image on show object page
  end
 end
 
end