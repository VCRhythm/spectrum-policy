class Issue < ActiveRecord::Base
  attr_accessible :description, :name
	has_many :spectrum_ranges
end
