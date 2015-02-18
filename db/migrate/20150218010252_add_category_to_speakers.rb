class AddCategoryToSpeakers < ActiveRecord::Migration
  def change
    add_column :speakers, :category_id, :integer
  end
end
