class CreateProjectRequests < ActiveRecord::Migration[5.1]
  def change
    create_table :project_requests do |t|
      t.string :name
      t.string :last_name
      t.string :email
      t.string :title
      t.text :pain
      t.text :target
      t.text :solution
      t.text :description
      t.integer :budget

      t.timestamps
    end
  end
end
