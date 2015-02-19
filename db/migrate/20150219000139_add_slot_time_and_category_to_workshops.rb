class AddSlotTimeAndCategoryToWorkshops < ActiveRecord::Migration
  def change
    add_column :workshops, :time, :string
    add_column :workshops, :slot, :integer
    add_column :workshops, :category_id, :integer
    add_column :workshops, :day_id, :integer
  end
end
