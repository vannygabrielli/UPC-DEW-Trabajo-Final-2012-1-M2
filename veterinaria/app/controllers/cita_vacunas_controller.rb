class CitaVacunasController < ApplicationController
  # GET /cita_vacunas
  # GET /cita_vacunas.json
  def index
    @cita_vacunas = CitaVacuna.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @cita_vacunas }
    end
  end

  # GET /cita_vacunas/1
  # GET /cita_vacunas/1.json
  def show
    @cita_vacuna = CitaVacuna.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @cita_vacuna }
    end
  end

  # GET /cita_vacunas/new
  # GET /cita_vacunas/new.json
  def new
    @cita_vacuna = CitaVacuna.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @cita_vacuna }
    end
  end

  # GET /cita_vacunas/1/edit
  def edit
    @cita_vacuna = CitaVacuna.find(params[:id])
  end

  # POST /cita_vacunas
  # POST /cita_vacunas.json
  def create
    @cita_vacuna = CitaVacuna.new(params[:cita_vacuna])

    respond_to do |format|
      if @cita_vacuna.save
        format.html { redirect_to @cita_vacuna, notice: 'Cita vacuna was successfully created.' }
        format.json { render json: @cita_vacuna, status: :created, location: @cita_vacuna }
      else
        format.html { render action: "new" }
        format.json { render json: @cita_vacuna.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /cita_vacunas/1
  # PUT /cita_vacunas/1.json
  def update
    @cita_vacuna = CitaVacuna.find(params[:id])

    respond_to do |format|
      if @cita_vacuna.update_attributes(params[:cita_vacuna])
        format.html { redirect_to @cita_vacuna, notice: 'Cita vacuna was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @cita_vacuna.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cita_vacunas/1
  # DELETE /cita_vacunas/1.json
  def destroy
    @cita_vacuna = CitaVacuna.find(params[:id])
    @cita_vacuna.destroy

    respond_to do |format|
      format.html { redirect_to cita_vacunas_url }
      format.json { head :no_content }
    end
  end
end
