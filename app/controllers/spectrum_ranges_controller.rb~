class SpectrumRangesController < ApplicationController
  # GET /spectrum_ranges
  # GET /spectrum_ranges.json
  def index
    @spectrum_ranges = SpectrumRange.includes(:issue).all
		@range_width = @spectrum_ranges.max.high - @spectrum_ranges.min.low
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @spectrum_ranges }
    end
  end

  # GET /spectrum_ranges/1
  # GET /spectrum_ranges/1.json
  def show
    @spectrum_range = SpectrumRange.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @spectrum_range }
    end
  end

  # GET /spectrum_ranges/new
  # GET /spectrum_ranges/new.json
  def new
    @spectrum_range = SpectrumRange.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @spectrum_range }
    end
  end

  # GET /spectrum_ranges/1/edit
  def edit
    @spectrum_range = SpectrumRange.find(params[:id])
  end

  # POST /spectrum_ranges
  # POST /spectrum_ranges.json
  def create
    @spectrum_range = SpectrumRange.new(params[:spectrum_range])

    respond_to do |format|
      if @spectrum_range.save
        format.html { redirect_to @spectrum_range, notice: 'Spectrum range was successfully created.' }
        format.json { render json: @spectrum_range, status: :created, location: @spectrum_range }
      else
        format.html { render action: "new" }
        format.json { render json: @spectrum_range.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /spectrum_ranges/1
  # PUT /spectrum_ranges/1.json
  def update
    @spectrum_range = SpectrumRange.find(params[:id])

    respond_to do |format|
      if @spectrum_range.update_attributes(params[:spectrum_range])
        format.html { redirect_to @spectrum_range, notice: 'Spectrum range was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @spectrum_range.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /spectrum_ranges/1
  # DELETE /spectrum_ranges/1.json
  def destroy
    @spectrum_range = SpectrumRange.find(params[:id])
    @spectrum_range.destroy

    respond_to do |format|
      format.html { redirect_to spectrum_ranges_url }
      format.json { head :no_content }
    end
  end
end
