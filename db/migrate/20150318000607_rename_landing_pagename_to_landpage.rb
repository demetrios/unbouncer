class RenameLandingPagenameToLandpage < ActiveRecord::Migration
  def change
    rename_column :widgets, :landing_pagename, :landpage
  end
end
