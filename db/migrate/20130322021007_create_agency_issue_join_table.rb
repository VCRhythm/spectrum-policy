class CreateAgencyIssueJoinTable < ActiveRecord::Migration
  def change
		create_table :agencies_issues, id: false do |t|
			t.integer :agency_id
			t.integer :issue_id
		end
  end
end
