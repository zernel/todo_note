class CreateTasks < ActiveRecord::Migration[5.1]
  def change
    create_table :tasks do |t|
      t.integer :user_id
      t.string :content
      t.boolean :is_finished, default: false
      t.datetime :finished_at

      t.timestamps
    end
  end
end
