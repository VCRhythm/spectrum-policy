class AddShareToSpectrumRange < ActiveRecord::Migration
  def change
    add_column :spectrum_ranges, :share, :integer
  end
end
