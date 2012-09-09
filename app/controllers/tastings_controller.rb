class TastingsController < ApplicationController
  # GET /tastings
  # GET /tastings.json
  def index
    @tastings = Tasting.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @tastings }
    end
  end

  # GET /tastings/1
  # GET /tastings/1.json
  def show
    @tasting = Tasting.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @tasting }
    end
  end

  # GET /tastings/new
  # GET /tastings/new.json
  def new
    @tasting = Tasting.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @tasting }
    end
  end

  # GET /tastings/1/edit
  def edit
    @tasting = Tasting.find(params[:id])
  end

  # POST /tastings
  # POST /tastings.json
  def create
    @tasting = Tasting.new(params[:tasting])

    respond_to do |format|
      if @tasting.save
        format.html { redirect_to @tasting, notice: 'Tasting was successfully created.' }
        format.json { render json: @tasting, status: :created, location: @tasting }
      else
        format.html { render action: "new" }
        format.json { render json: @tasting.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /tastings/1
  # PUT /tastings/1.json
  def update
    @tasting = Tasting.find(params[:id])

    respond_to do |format|
      if @tasting.update_attributes(params[:tasting])
        format.html { redirect_to @tasting, notice: 'Tasting was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @tasting.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tastings/1
  # DELETE /tastings/1.json
  def destroy
    @tasting = Tasting.find(params[:id])
    @tasting.destroy

    respond_to do |format|
      format.html { redirect_to tastings_url }
      format.json { head :no_content }
    end
  end
end
