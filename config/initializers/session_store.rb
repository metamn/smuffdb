# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_migr_session',
  :secret      => '2d114772dda5160e38a428c27d931327152975ca4c3cb515737b2ecae82715ca0a7070ec8d3325f6d147ddcb53cfca91d202ac4a2e65a5581e69eedcf26b0526'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
