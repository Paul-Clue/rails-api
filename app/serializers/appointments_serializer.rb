class AppointmentsSerializer < ActiveModel::Serializer
  attributes :id, :date, :user

  belongs_to :user
end
