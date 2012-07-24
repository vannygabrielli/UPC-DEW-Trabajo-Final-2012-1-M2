class DateVaccinesController < ApplicationController
  # GET /date_vaccines
  # GET /date_vaccines.json
  # GET /users
  def index
    @date_vaccines = DateVaccine.all
	@users = User.all
	
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @date_vaccines }
    end
  end

  # GET /date_vaccines/1
  # GET /date_vaccines/1.json
  def show
    @date_vaccine = DateVaccine.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @date_vaccine }
    end
  end

  # GET /date_vaccines/new
  # GET /date_vaccines/new.json
  # GET /users
  def new
    @date_vaccine = DateVaccine.new
	@users = User.all
	
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @date_vaccine }
    end
  end

  # GET /date_vaccines/1/edit
  def edit
    @date_vaccine = DateVaccine.find(params[:id])
  end

  # POST /date_vaccines
  # POST /users
  # POST /date_vaccines.json
  def create
    @date_vaccine = DateVaccine.new(params[:date_vaccine])
	@users = User.all
	
    respond_to do |format|
      if @date_vaccine.save
        format.html { redirect_to @date_vaccine, notice: 'Date vaccine was successfully created.' }
        format.json { render json: @date_vaccine, status: :created, location: @date_vaccine }
      else
        format.html { render action: "new" }
        format.json { render json: @date_vaccine.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /date_vaccines/1
  # PUT /date_vaccines/1.json
  def update
    @date_vaccine = DateVaccine.find(params[:id])

    respond_to do |format|
      if @date_vaccine.update_attributes(params[:date_vaccine])
        format.html { redirect_to @date_vaccine, notice: 'Date vaccine was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @date_vaccine.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /date_vaccines/1
  # DELETE /date_vaccines/1.json
  def destroy
    @date_vaccine = DateVaccine.find(params[:id])
    @date_vaccine.destroy

    respond_to do |format|
      format.html { redirect_to date_vaccines_url }
      format.json { head :no_content }
    end
  end
end
