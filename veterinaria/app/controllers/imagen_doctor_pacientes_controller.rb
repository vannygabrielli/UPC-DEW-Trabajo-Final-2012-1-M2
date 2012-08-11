class ImagenDoctorPacientesController < ApplicationController
  # GET /imagen_doctor_pacientes
  # GET /imagen_doctor_pacientes.json
  def index
    @imagen_doctor_pacientes = ImagenDoctorPaciente.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @imagen_doctor_pacientes }
    end
  end

  # GET /imagen_doctor_pacientes/1
  # GET /imagen_doctor_pacientes/1.json
  def show
    @imagen_doctor_paciente = ImagenDoctorPaciente.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @imagen_doctor_paciente }
    end
  end

  # GET /imagen_doctor_pacientes/new
  # GET /imagen_doctor_pacientes/new.json
  def new
    @imagen_doctor_paciente = ImagenDoctorPaciente.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @imagen_doctor_paciente }
    end
  end

  # GET /imagen_doctor_pacientes/1/edit
  def edit
    @imagen_doctor_paciente = ImagenDoctorPaciente.find(params[:id])
  end

  # POST /imagen_doctor_pacientes
  # POST /imagen_doctor_pacientes.json
  def create
    @imagen_doctor_paciente = ImagenDoctorPaciente.new(params[:imagen_doctor_paciente])

    respond_to do |format|
      if @imagen_doctor_paciente.save
        format.html { redirect_to @imagen_doctor_paciente, notice: 'Imagen doctor paciente was successfully created.' }
        format.json { render json: @imagen_doctor_paciente, status: :created, location: @imagen_doctor_paciente }
      else
        format.html { render action: "new" }
        format.json { render json: @imagen_doctor_paciente.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /imagen_doctor_pacientes/1
  # PUT /imagen_doctor_pacientes/1.json
  def update
    @imagen_doctor_paciente = ImagenDoctorPaciente.find(params[:id])

    respond_to do |format|
      if @imagen_doctor_paciente.update_attributes(params[:imagen_doctor_paciente])
        format.html { redirect_to @imagen_doctor_paciente, notice: 'Imagen doctor paciente was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @imagen_doctor_paciente.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /imagen_doctor_pacientes/1
  # DELETE /imagen_doctor_pacientes/1.json
  def destroy
    @imagen_doctor_paciente = ImagenDoctorPaciente.find(params[:id])
    @imagen_doctor_paciente.destroy

    respond_to do |format|
      format.html { redirect_to imagen_doctor_pacientes_url }
      format.json { head :no_content }
    end
  end
end
