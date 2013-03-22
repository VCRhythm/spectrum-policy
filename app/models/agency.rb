class Agency < ActiveRecord::Base
  attr_accessible :name
	has_many :agency_actions
	has_many :issues, through: :agency_actions
end
