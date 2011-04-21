# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_tagme_session',
  :secret      => '8aae2fea2ec7aa44c9dd8844813c0d0e717b0d7f98754f99880c80ea0cc1a9f336f46c953a8ec1fcf1c8491dcb2c297ecf465fb2f4e2744137b7afd26385ffae'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
