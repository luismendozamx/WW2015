class AddMissingFields < ActiveRecord::Migration
  def change
    add_index :speakers, :slug

    add_column :users, :folio, :integer
    add_column :events, :speaker_id, :integer
    add_column :events, :location_id, :integer
  end
end
