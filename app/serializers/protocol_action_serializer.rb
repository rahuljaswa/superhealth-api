class ProtocolActionSerializer < ActiveModel::Serializer
	attributes :user, :name, :description, :start_time, :end_time, :protocol, :status
end