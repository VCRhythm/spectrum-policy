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
  attr_accessible :description, :name
	has_many :spectrum_ranges
	has_and_belongs_to_many :agencies
end
