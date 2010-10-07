# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_timentweet_session',
  :secret      => 'e0975c691d85cc996a990aea1503c01510ba38891554d952b6086e118eea56651e510740e505dc8ebd0959e910323dedffd015d3e4136b6eef4001cd59d74252'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
