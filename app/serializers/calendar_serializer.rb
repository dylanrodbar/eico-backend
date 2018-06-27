class CalendarSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :date
end
