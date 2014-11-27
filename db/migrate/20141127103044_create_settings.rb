class CreateSettings < ActiveRecord::Migration
  def change
    create_table :settings do |t|
      t.string :facebook
      t.string :twitter
      t.string :googleplus
      t.string :footer_text
      t.string :data_source

      t.timestamps
    end
  end
end
