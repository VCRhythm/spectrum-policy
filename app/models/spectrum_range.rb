# == Schema Information
#
# Table name: spectrum_ranges
#
#  id         :integer          not null, primary key
#  low        :integer
#  high       :integer
#  issue_id   :integer
#  name       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class SpectrumRange < ActiveRecord::Base
	before_save :default_values
  attr_accessible :high, :issue_id, :low, :name, :share
  default_scope order('low ASC')
  
 	belongs_to :issue	
  def width
		high - low
  end
	def default_values
		self.share ||= 1
	end
end
