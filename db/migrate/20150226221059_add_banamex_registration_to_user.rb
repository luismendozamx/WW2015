class AddBanamexRegistrationToUser < ActiveRecord::Migration
  def change
    add_column :users, :banamex_ticket, :boolean
  end
end
