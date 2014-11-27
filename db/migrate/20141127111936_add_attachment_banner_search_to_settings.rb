class AddAttachmentBannerSearchToSettings < ActiveRecord::Migration
  def self.up
    change_table :settings do |t|
      t.attachment :banner_search
    end
  end

  def self.down
    remove_attachment :settings, :banner_search
  end
end
