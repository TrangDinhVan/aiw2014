class CreateHistories < ActiveRecord::Migration
  def change
    create_table :histories do |t|
      t.string :name
      t.string :year
      t.references :club, index: true

      t.timestamps
    end
  end
end
