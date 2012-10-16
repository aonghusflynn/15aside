class County < ActiveRecord::Base
  attr_accessible :name
  has_one :profile, :as => :profileable
end
