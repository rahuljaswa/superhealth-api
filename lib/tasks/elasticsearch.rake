namespace :db do
	def rake_migrate_post_hook
		
	end

	task :migrate do
		rake_migrate_post_hook
	end
end
