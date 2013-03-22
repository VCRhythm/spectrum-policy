class AddFundingToIssue < ActiveRecord::Migration
  def change
    add_column :issues, :funding, :integer
  end
end
