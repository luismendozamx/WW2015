class CreateWorkshopWaitingLists < ActiveRecord::Migration
  def change
    create_table :workshop_waiting_lists do |t|
      t.belongs_to :user
      t.belongs_to :workshop

      t.timestamps
    end
  end
end
