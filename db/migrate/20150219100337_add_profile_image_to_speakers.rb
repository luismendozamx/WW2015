class AddProfileImageToSpeakers < ActiveRecord::Migration
  def change
    add_column :speakers, :profile_image_id, :string
  end
end
