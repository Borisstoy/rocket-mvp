class AddHomeToProjectRequests < ActiveRecord::Migration[5.1]
  def change
    add_column :project_requests, :home, :boolean, default: false
  end
end
