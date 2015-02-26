class AddLimitToEvents < ActiveRecord::Migration
  def change
    add_column :events, :limit, :integer
    add_column :events, :limit_banamex, :integer
    add_column :workshops, :limit, :integer
    add_column :workshops, :limit_banamex, :integer
  end
end
