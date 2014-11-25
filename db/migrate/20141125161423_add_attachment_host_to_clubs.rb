class AddAttachmentHostToClubs < ActiveRecord::Migration
  def self.up
    change_table :clubs do |t|
      t.attachment :host
    end
  end

  def self.down
    remove_attachment :clubs, :host
  end
end
