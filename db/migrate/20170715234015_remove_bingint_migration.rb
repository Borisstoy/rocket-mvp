class RemoveBingintMigration < ActiveRecord::Migration[5.1]
  def change
    remove_column :project_requests, :project_kind_id
  end
end
