class AgencyActionsController < ApplicationController
  # GET /agency_actions
  # GET /agency_actions.json
  def index
		@issues = Issue.find(params[:issue_id])
    @agency_actions = @issues.agency_actions
			
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @agency_actions.as_json }
    end
  end
end
