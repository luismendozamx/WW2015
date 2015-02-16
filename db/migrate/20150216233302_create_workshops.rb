class CreateWorkshops < ActiveRecord::Migration
  def change
    create_table :workshops do |t|
      t.string :title
      t.text :description
      t.string :slug
      t.belongs_to :speaker
      t.belongs_to :location

      t.timestamps
    end
  end
end
