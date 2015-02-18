class CreateDays < ActiveRecord::Migration
  def change
    create_table :days do |t|
      t.string :name
      t.integer :day

      t.timestamps
    end

    add_column :events, :day_id, :integer
  end
end
