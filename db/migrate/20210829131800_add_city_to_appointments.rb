class AddCityToAppointments < ActiveRecord::Migration[6.1]
  def change
    add_column :appointments, :city, :string
  end
end
