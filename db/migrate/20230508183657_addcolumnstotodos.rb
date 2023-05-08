class Addcolumnstotodos < ActiveRecord::Migration[7.0]
  def change
    add_column :todos, :details, :string
    add_column :todos, :due_date, :string
    add_column :todos, :list_id, :integer
  end
end
