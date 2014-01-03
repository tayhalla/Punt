require "rails/generators/base"

module Punt
	module Generators
		class InstallGenerator < Rails::Generators::Base
			source_root File.expand_path("../templates", __FILE__)

			desc "Generates a RailsExceptionMailer initializer and a template for exception printing"
			
			def copy_initializer			
				template "punt.rb", "config/initializers/punt.rb"
			end	

		end	
	end
end