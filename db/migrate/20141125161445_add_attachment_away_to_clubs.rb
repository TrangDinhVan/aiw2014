class AddAttachmentAwayToClubs < ActiveRecord::Migration
  def self.up
    change_table :clubs do |t|
      t.attachment :away
    end
  end

  def self.down
    remove_attachment :clubs, :away
  end
end
