class HownersController < ApplicationController
  # GET /howners
  # GET /howners.json
  def index
    @howners = Howner.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @howners }
    end
  end

  # GET /howners/1
  # GET /howners/1.json
  def show
    @howner = Howner.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @howner }
    end
  end

  # GET /howners/new
  # GET /howners/new.json
  def new
    @howner = Howner.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @howner }
    end
  end

  # GET /howners/1/edit
  def edit
    @howner = Howner.find(params[:id])
  end

  # POST /howners
  # POST /howners.json
  def create
    @howner = Howner.new(params[:howner])

    respond_to do |format|
      if @howner.save
        format.html { redirect_to @howner, notice: 'Howner was successfully created.' }
        format.json { render json: @howner, status: :created, location: @howner }
      else
        format.html { render action: "new" }
        format.json { render json: @howner.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /howners/1
  # PUT /howners/1.json
  def update
    @howner = Howner.find(params[:id])

    respond_to do |format|
      if @howner.update_attributes(params[:howner])
        format.html { redirect_to @howner, notice: 'Howner was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @howner.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /howners/1
  # DELETE /howners/1.json
  def destroy
    @howner = Howner.find(params[:id])
    @howner.destroy

    respond_to do |format|
      format.html { redirect_to howners_url }
      format.json { head :no_content }
    end
  end
end
