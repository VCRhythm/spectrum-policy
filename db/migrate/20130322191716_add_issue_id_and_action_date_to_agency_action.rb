class AddIssueIdAndActionDateToAgencyAction < ActiveRecord::Migration
  def change
    add_column :agency_actions, :issue_id, :integer
    add_column :agency_actions, :action_date, :date
  end
end
