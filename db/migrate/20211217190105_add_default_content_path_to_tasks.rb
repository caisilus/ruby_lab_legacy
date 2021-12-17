class AddDefaultContentPathToTasks < ActiveRecord::Migration[7.0]
  def change
    change_column_default :tasks, :content_path, "default"
  end
end
