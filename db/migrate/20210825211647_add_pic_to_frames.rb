class AddPicToFrames < ActiveRecord::Migration[6.1]
  def change
    add_column :frames, :pic, :string
  end
end
