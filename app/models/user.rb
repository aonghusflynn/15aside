class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :token_authenticatable, :confirmable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me
  
  attr_accessible :email, :facebook_id, :firstname, :last_login, :lastname, :password_digest, :username, :avatar
  has_one :profile, :as => :profileable
  has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>" }
  
  has_secure_password
  
  validates_uniqueness_of :username
  
  
  # def self.authenticate(username, password)
  #   user = User.find_by_username(:username)
  #   unless user && user.authenticate(password)
  #     raise "The username or password is wrong"
  #   end
  #   user
  # end
  
end
