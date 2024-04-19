class ProtocolSerializer < ActiveModel::Serializer
	attributes :name, :description, :start_time, :end_time, :compliance_rate

	has_many :protocol_actions
end