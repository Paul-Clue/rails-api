class DropFrames < ActiveRecord::Migration[6.1]
  def up
    drop_table :frames
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
