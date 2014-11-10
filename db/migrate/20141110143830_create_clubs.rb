class CreateClubs < ActiveRecord::Migration
  def change
    create_table :clubs do |t|
      t.string :name
      t.string :nick_name
      t.string :coach
      t.integer :year
      t.string :stadium
      t.integer :volume
      t.string :location
      t.string :president
      t.string :string

      t.timestamps
    end
  end
end
