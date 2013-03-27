class AgencyActionsController < ApplicationController
  # GET /agency_actions
  # GET /agency_actions.json
  def index
		@issue = Issue.find(params[:issue_id])
    @agency_actions = @issue.agency_actions
			
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @agency_actions.as_json }
    end
  end
	def new
		@issue = Issue.find(params[:issue_id])
		@agency_action = @issue.agency_actions.new
		respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @agency_actions.as_json }
    end
	end
	def create
		@issue = Issue.find(params[:issue_id])
    @agency_action = @issue.agency_actions.new(params[:agency_action])

    respond_to do |format|
      if @agency_action.save
        format.html { redirect_to @agency_action, notice: 'Agency Action was successfully created.' }
        format.json { render json: @agency_action, status: :created, location: @agency_action }
      else
        format.html { render action: "new" }
        format.json { render json: @agency_action.errors, status: :unprocessable_entity }
      end
    end
  end

end
