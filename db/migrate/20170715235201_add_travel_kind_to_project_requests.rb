class AddTravelKindToProjectRequests < ActiveRecord::Migration[5.1]
  def change
    add_column :project_requests, :travel, :boolean, default: false
  end
end
