class CreateWorkshopSubscriptions < ActiveRecord::Migration
  def change
    create_table :workshop_subscriptions do |t|
      t.belongs_to :user
      t.belongs_to :workshop
      t.string :status
      t.string :priority

      t.timestamps
    end
  end
end
