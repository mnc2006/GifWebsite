class UserSession < Authlogic::Session::Base 

  belongs_to :user

end
