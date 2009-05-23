# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_veg-restaurant-tracker_session',
  :secret      => '189b7a4fc97dc550b887f4b435f5701ac0f811299ce4f5cd0438159181136258fb1fe81e5b3faa68e3ba20d89f1bdb45a9ed1893d6db8123722ed9a012ded2ad'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
