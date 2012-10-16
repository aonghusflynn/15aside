class User < ActiveRecord::Base
  attr_accessible :email, :facebook_id, :firstname, :last_login, :lastname, :password_digest, :username
  has_one :profile, :as => :profileable
end
