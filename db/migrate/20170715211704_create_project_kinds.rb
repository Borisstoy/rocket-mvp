class CreateProjectKinds < ActiveRecord::Migration[5.1]
  def change
    create_table :project_kinds do |t|
      t.boolean :travel

      t.timestamps
    end
  end
end
