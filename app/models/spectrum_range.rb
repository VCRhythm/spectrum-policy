class SpectrumRange < ActiveRecord::Base
  attr_accessible :high, :issue_id, :low, :name
  default_scope order('low ASC')
  
 	belongs_to :issue	
  def width
		high - low
  end
end
