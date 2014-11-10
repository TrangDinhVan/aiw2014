class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
      t.string :name
      t.integer :age
      t.date :dob
      t.string :nation
      t.decimal :height
      t.decimal :weight
      t.string :position
      t.string :leg
      t.decimal :level

      t.timestamps
    end
  end
end
