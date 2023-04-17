class CreateTask < ActiveRecord::Migration[6.1]
  def change
    create_table :tasks do |t|
      t.string :task
      t.boolean :completed, default: false
    end
  end
end
