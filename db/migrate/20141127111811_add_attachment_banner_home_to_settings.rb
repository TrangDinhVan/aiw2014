class AddAttachmentBannerHomeToSettings < ActiveRecord::Migration
  def self.up
    change_table :settings do |t|
      t.attachment :banner_home
    end
  end

  def self.down
    remove_attachment :settings, :banner_home
  end
end
