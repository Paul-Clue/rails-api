class AppointmentsSerializer < ActiveModel::Serializer
  attributes :id, :date, :user, :frame, :city

  belongs_to :user
end
