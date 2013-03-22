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

require 'test_helper'

class SpectrumRangeTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
