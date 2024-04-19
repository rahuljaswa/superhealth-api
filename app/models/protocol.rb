class Protocol < ApplicationRecord
	has_and_belongs_to_many :users

	has_many :protocol_actions
end