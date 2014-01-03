
module RailsExceptionMailer

	# Sender Setting
	mattr_accessor :sender
	@@sender = nil

	# To Setting
	mattr_accessor :recipient
	@@recipient = nil

	mattr_accessor :subject
	@@subject = nil

	mattr_accessor :smtp_address
	@@smtp_address = nil

	mattr_accessor :smtp_domain
	@@smtp_domain = nil

	mattr_accessor :smtp_port
	@@smtp_port = nil

	mattr_accessor :smtp_authentication
	@@smtp_authentication = nil

	mattr_accessor :smtp_username
	@@smtp_username = nil

	mattr_accessor :smtp_password
	@@smtp_password = nil
	
	



end