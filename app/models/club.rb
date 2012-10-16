class Club < ActiveRecord::Base
  attr_accessible :football, :hurling, :name
  has_one :profile, :as => :profileable
end
