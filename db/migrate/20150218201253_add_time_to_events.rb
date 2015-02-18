class AddTimeToEvents < ActiveRecord::Migration
  def change
    add_column :events, :time, :string
    add_column :events, :slot, :integer
  end
end
