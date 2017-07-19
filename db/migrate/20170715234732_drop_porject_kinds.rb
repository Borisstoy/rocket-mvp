class DropPorjectKinds < ActiveRecord::Migration[5.1]
  def change
    drop_table :project_kinds
  end
end
