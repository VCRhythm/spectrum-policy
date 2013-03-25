# == Schema Information
#
# Table name: issues
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  description :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Issue < ActiveRecord::Base
  attr_accessible :description, :name, :color
	has_many :spectrum_ranges
	has_many :agency_actions
	has_many :agencies, through: :agency_actions
end
