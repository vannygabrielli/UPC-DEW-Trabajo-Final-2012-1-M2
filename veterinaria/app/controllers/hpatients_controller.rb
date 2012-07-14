class HpatientsController < ApplicationController
  # GET /hpatients
  # GET /hpatients.json
  def index
    @hpatients = Hpatient.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @hpatients }
    end
  end

  # GET /hpatients/1
  # GET /hpatients/1.json
  def show
    @hpatient = Hpatient.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @hpatient }
    end
  end

  # GET /hpatients/new
  # GET /hpatients/new.json
  def new
    @hpatient = Hpatient.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @hpatient }
    end
  end

  # GET /hpatients/1/edit
  def edit
    @hpatient = Hpatient.find(params[:id])
  end

  # POST /hpatients
  # POST /hpatients.json
  def create
    @hpatient = Hpatient.new(params[:hpatient])

    respond_to do |format|
      if @hpatient.save
        format.html { redirect_to @hpatient, notice: 'Hpatient was successfully created.' }
        format.json { render json: @hpatient, status: :created, location: @hpatient }
      else
        format.html { render action: "new" }
        format.json { render json: @hpatient.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /hpatients/1
  # PUT /hpatients/1.json
  def update
    @hpatient = Hpatient.find(params[:id])

    respond_to do |format|
      if @hpatient.update_attributes(params[:hpatient])
        format.html { redirect_to @hpatient, notice: 'Hpatient was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @hpatient.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hpatients/1
  # DELETE /hpatients/1.json
  def destroy
    @hpatient = Hpatient.find(params[:id])
    @hpatient.destroy

    respond_to do |format|
      format.html { redirect_to hpatients_url }
      format.json { head :no_content }
    end
  end
end
