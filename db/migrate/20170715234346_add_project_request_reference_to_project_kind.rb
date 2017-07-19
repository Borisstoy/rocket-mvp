class AddProjectRequestReferenceToProjectKind < ActiveRecord::Migration[5.1]
  def change
    add_column :project_kinds, :project_request_id, :integer
  end
end
