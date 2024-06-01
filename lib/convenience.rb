class Convenience
	def self.safely_retrieve_value(hashed_json_object, key)
		if hashed_json_object
			hashed_json_object.key?(key) ? hashed_json_object[key] : nil
		end
	end
end
