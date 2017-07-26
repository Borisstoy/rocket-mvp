class AddRhythmKindToProjectRequests < ActiveRecord::Migration[5.1]
  def change
    add_column :project_requests, :rhythm, :boolean, default: false
  end
end
