class AddFameToAppointments < ActiveRecord::Migration[6.1]
  def change
    add_column :appointments, :frame, :string
  end
end
