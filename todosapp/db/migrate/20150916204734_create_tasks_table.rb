class CreateTasksTable < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.column :task, :string, null: false, limit: 300
      t.column :completed, :boolean, default: false
    end
  end
end
