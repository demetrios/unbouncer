class RenameCampaignIdToLandingPagename < ActiveRecord::Migration
  def change
    rename_column :widgets, :campaign_id, :landing_pagename
  end
end
