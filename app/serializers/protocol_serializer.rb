class ProtocolSerializer < ActiveModel::Serializer
	attributes :name, :description, :id, :start_time, :end_time, :compliance_rate, :id

	has_many :protocol_actions
end