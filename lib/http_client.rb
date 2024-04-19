class HTTPClient
	def self.fetch_response(url)
		http = Net::HTTP.new(url.host, url.port)
		http.use_ssl = true
		http.verify_mode = OpenSSL::SSL::VERIFY_NONE

		request = Net::HTTP::Get.new(url)
		request.body = "{}"

		response = http.request(request)
	end
end
