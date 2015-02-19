class AddLengthToWorkshops < ActiveRecord::Migration
  def change
    add_column :workshops, :length, :integer
  end
end
