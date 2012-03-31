class NovinkiesController < ApplicationController
  # GET /novinkies
  # GET /novinkies.json
  def index
    @novinkies = Novinky.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @novinkies }
    end
  end

  # GET /novinkies/1
  # GET /novinkies/1.json
  def show
    @novinky = Novinky.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @novinky }
    end
  end

  # GET /novinkies/new
  # GET /novinkies/new.json
  def new
    @novinky = Novinky.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @novinky }
    end
  end

  # GET /novinkies/1/edit
  def edit
    @novinky = Novinky.find(params[:id])
  end

  # POST /novinkies
  # POST /novinkies.json
  def create
    @novinky = Novinky.new(params[:novinky])

    respond_to do |format|
      if @novinky.save
        format.html { redirect_to @novinky, notice: 'Novinky was successfully created.' }
        format.json { render json: @novinky, status: :created, location: @novinky }
      else
        format.html { render action: "new" }
        format.json { render json: @novinky.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /novinkies/1
  # PUT /novinkies/1.json
  def update
    @novinky = Novinky.find(params[:id])

    respond_to do |format|
      if @novinky.update_attributes(params[:novinky])
        format.html { redirect_to @novinky, notice: 'Novinky was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @novinky.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /novinkies/1
  # DELETE /novinkies/1.json
  def destroy
    @novinky = Novinky.find(params[:id])
    @novinky.destroy

    respond_to do |format|
      format.html { redirect_to novinkies_url }
      format.json { head :no_content }
    end
  end
end
