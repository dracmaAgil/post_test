# config/initializers/pusher.rb
require 'pusher'

Pusher.app_id = '777947'
Pusher.key = '9d4bf8552ac628416418'
Pusher.secret = '622fd623ec55eb27d43e'
Pusher.cluster = 'us3'
Pusher.logger = Rails.logger
Pusher.encrypted = true