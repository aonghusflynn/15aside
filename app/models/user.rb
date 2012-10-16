class User < ActiveRecord::Base
  attr_accessible :email, :facebook_id, :firstname, :last_login, :lastname, :password_digest, :username, :avatar
  has_one :profile, :as => :profileable
  has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>" }
  
  has_secure_password
end
