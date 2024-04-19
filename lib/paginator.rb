class Paginator
	def self.paginated_response(params, base_query, nested)
		page = (params[:page] || 1).to_i
		results_per_page = (params[:results_per_page] || 25).to_i

		number_of_results = base_query.count

		results = base_query.limit(results_per_page).offset((page-1) * results_per_page)

		return {
			metadata: { 
				endpoint: params[:controller],
				number_of_results: number_of_results,
				page: page,
				results_per_page: results_per_page
			},
			data: ActiveModelSerializers::SerializableResource.new(results, { include: nested })
		}
	end

	def self.paginated_elastic_response(params, response, page, results_per_page, nested)
		number_of_results = response.results.total

		results = response.records

		return {
			metadata: { 
				endpoint: params[:controller],
				number_of_results: number_of_results,
				page: page,
				results_per_page: results_per_page
			},
			data: ActiveModelSerializers::SerializableResource.new(results, { include: nested })
		}
	end
end
