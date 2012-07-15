class AttentionsController < ApplicationController
  # GET /attentions
  # GET /attentions.json
  def index
    @attentions = Attention.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @attentions }
    end
  end

  # GET /attentions/1
  # GET /attentions/1.json
  def show
    @attention = Attention.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @attention }
    end
  end

  # GET /attentions/new
  # GET /attentions/new.json
  def new
    @attention = Attention.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @attention }
    end
  end

  # GET /attentions/1/edit
  def edit
    @attention = Attention.find(params[:id])
  end

  # POST /attentions
  # POST /attentions.json
  def create
    @attention = Attention.new(params[:attention])

    respond_to do |format|
      if @attention.save
        format.html { redirect_to @attention, notice: 'Attention was successfully created.' }
        format.json { render json: @attention, status: :created, location: @attention }
      else
        format.html { render action: "new" }
        format.json { render json: @attention.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /attentions/1
  # PUT /attentions/1.json
  def update
    @attention = Attention.find(params[:id])

    respond_to do |format|
      if @attention.update_attributes(params[:attention])
        format.html { redirect_to @attention, notice: 'Attention was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @attention.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /attentions/1
  # DELETE /attentions/1.json
  def destroy
    @attention = Attention.find(params[:id])
    @attention.destroy

    respond_to do |format|
      format.html { redirect_to attentions_url }
      format.json { head :no_content }
    end
  end
end
