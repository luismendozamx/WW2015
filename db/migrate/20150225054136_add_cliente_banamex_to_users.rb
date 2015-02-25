class AddClienteBanamexToUsers < ActiveRecord::Migration
  def change
    add_column :users, :cliente_banamex, :boolean
  end
end
