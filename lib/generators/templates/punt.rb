
Punt.configure do |config|

	## Punt Configuration ##

	# Punt will reduce duplicate reports of the same
	# issue by looking at the 1st spot of the backtrace, 
	# the exception class reported, and the description.
	#
	config.reduce_duplicates = true

	# Configure how often reports are sent out. 
	# Default is 24hrs
	#
	config.report_frequency = 24.hours

	# Time of day report will be issued. 
	# Default is 12:00PM UTC
	#
	config.time_of_report = true

	# Maximum file size of report to be allowed.	
	# If overflow, file will be broken down and 
	# sent in chunks. In MB ~ 2 == 2MB
	# Default is 2MB
	#
	config.max_file_size = 2

	# Maximum file size of report to be allowed.	
	# If overflow, file will be broken down and 
	# sent in chunks. In MB ~ 2 == 2MB
	# Default is 2MB
	#
	config.max_file_size = 2	

	## Punt Email Configuration ##

	# Email Send Settings
	#	
	config.sender 					= "railsapp@punter.com"
	config.recipient 				= "joeDeveloper@gmail.com"
	config.subject					= "Rails App Exceptions"
	
	#SMTP Congiguration
	#
	config.smtp do |smtp|

		# Acct Username and Password
		#
		smtp[:user_name]			= '<username>'
		smtp[:password]				= '<password>'

		# Address, Domain, and Port
		#
		smtp[:address] 				= 'smtp.gmail.com'
		smtp[:port]						= 587
		smtp[:domain]					= 'example.com'

		# Auth if server requires it. Options are:
		# :plain, :login, :cram_md5
		#
		smtp[:authentication] = :plain

		# Set this to false if there is a problem with 
		# your server certificate that you cannot resolve.
		#
		smtp[:starttls_auto]	= true
	end
	
end