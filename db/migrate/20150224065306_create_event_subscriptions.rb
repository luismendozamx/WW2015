class CreateEventSubscriptions < ActiveRecord::Migration
  def change
    create_table :event_subscriptions do |t|
      t.belongs_to :user
      t.belongs_to :event
      t.string :status
      t.string :priority

      t.timestamps
    end
  end
end
