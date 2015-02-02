class CreateSpeakers < ActiveRecord::Migration
  def change
    create_table :speakers do |t|
      t.string :first_name
      t.string :last_name
      t.string :slug
      t.text :bio

      t.timestamps
    end
  end
end
