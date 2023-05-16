class UpdateDueDateType < ActiveRecord::Migration[7.0]
  def change
    change_column :todos, :due_date, :string
  end
end
