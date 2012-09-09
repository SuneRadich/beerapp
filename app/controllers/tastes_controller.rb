class TastesController < ApplicationController
  # GET /tastes
  # GET /tastes.json
  def index
    @tastes = Taste.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @tastes }
    end
  end

  # GET /tastes/1
  # GET /tastes/1.json
  def show
    @taste = Taste.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @taste }
    end
  end

  # GET /tastes/new
  # GET /tastes/new.json
  def new
    @taste = Taste.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @taste }
    end
  end

  # GET /tastes/1/edit
  def edit
    @taste = Taste.find(params[:id])
  end

  # POST /tastes
  # POST /tastes.json
  def create
    @taste = Taste.new(params[:taste])

    respond_to do |format|
      if @taste.save
        format.html { redirect_to @taste, notice: 'Taste was successfully created.' }
        format.json { render json: @taste, status: :created, location: @taste }
      else
        format.html { render action: "new" }
        format.json { render json: @taste.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /tastes/1
  # PUT /tastes/1.json
  def update
    @taste = Taste.find(params[:id])

    respond_to do |format|
      if @taste.update_attributes(params[:taste])
        format.html { redirect_to @taste, notice: 'Taste was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @taste.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tastes/1
  # DELETE /tastes/1.json
  def destroy
    @taste = Taste.find(params[:id])
    @taste.destroy

    respond_to do |format|
      format.html { redirect_to tastes_url }
      format.json { head :no_content }
    end
  end
end
