class AddCampaigIdToWidgets < ActiveRecord::Migration
  def change
    add_column :widgets, :campaign_id, :string
  end
end
