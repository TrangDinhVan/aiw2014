class AddAttachmentBannerSingleToSettings < ActiveRecord::Migration
  def self.up
    change_table :settings do |t|
      t.attachment :banner_single
    end
  end

  def self.down
    remove_attachment :settings, :banner_single
  end
end
