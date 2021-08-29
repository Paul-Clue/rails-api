class AddFrameIdToAppointments < ActiveRecord::Migration[6.1]
  def change
    add_reference :appointments, :frame, null: false, foreign_key: true
  end
end
