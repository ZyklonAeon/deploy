class FotkiesController < ApplicationController
  # GET /fotkies
  # GET /fotkies.json
  def index
    @fotkies = Fotky.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @fotkies }
    end
  end

  # GET /fotkies/1
  # GET /fotkies/1.json
  def show
    @fotky = Fotky.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @fotky }
    end
  end

  # GET /fotkies/new
  # GET /fotkies/new.json
  def new
    @fotky = Fotky.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @fotky }
    end
  end

  # GET /fotkies/1/edit
  def edit
    @fotky = Fotky.find(params[:id])
  end

  # POST /fotkies
  # POST /fotkies.json
  def create
    @fotky = Fotky.new(params[:fotky])

    respond_to do |format|
      if @fotky.save
        format.html { redirect_to @fotky, notice: 'Fotky was successfully created.' }
        format.json { render json: @fotky, status: :created, location: @fotky }
      else
        format.html { render action: "new" }
        format.json { render json: @fotky.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /fotkies/1
  # PUT /fotkies/1.json
  def update
    @fotky = Fotky.find(params[:id])

    respond_to do |format|
      if @fotky.update_attributes(params[:fotky])
        format.html { redirect_to @fotky, notice: 'Fotky was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @fotky.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fotkies/1
  # DELETE /fotkies/1.json
  def destroy
    @fotky = Fotky.find(params[:id])
    @fotky.destroy

    respond_to do |format|
      format.html { redirect_to fotkies_url }
      format.json { head :no_content }
    end
  end
end
