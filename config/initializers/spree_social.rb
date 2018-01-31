if ActiveRecord::Base.connection.table_exists? 'spree_authentication_methods'
  Spree::AuthenticationMethod.where(environment: ::Rails.env, provider: 'github').first_or_create do |auth_method|
    auth_method.api_key = '3d54c37b1dbff204ec0e'
    auth_method.api_secret = 'e301e3c7392e33f001e7fc4aef2907dbc0e2b694'
    auth_method.active = true
  end
end