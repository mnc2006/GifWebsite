class UserController < ApplicationController

acts_as_authlogic do |c|
  c.crypto_provider = Authlogic::CryptoProviders::BCrypt
  end


end
