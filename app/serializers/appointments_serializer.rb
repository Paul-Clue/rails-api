class AppointmentsSerializer < ActiveModel::Serializer
  attributes :id, :date, :user, :frame

  belongs_to :user
end
