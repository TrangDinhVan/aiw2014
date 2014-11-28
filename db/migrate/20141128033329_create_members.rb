class CreateMembers < ActiveRecord::Migration
  def change
    create_table :members do |t|
      t.string :name
      t.string :student_id
      t.string :email
      t.string :phone
      t.string :idol

      t.timestamps
    end
  end
end
