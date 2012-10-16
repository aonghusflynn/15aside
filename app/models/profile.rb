class Profile < ActiveRecord::Base
  attr_accessible :about, :football, :hurling, :profileable_id, :profileable_type
  belongs_to :profileable, :polymorphic => true
end
