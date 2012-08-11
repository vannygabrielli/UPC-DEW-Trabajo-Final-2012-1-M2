class DoctorPacientesController < ApplicationController
  # GET /doctor_pacientes
  # GET /doctor_pacientes.json
  def index
    @doctor_pacientes = DoctorPaciente.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @doctor_pacientes }
    end
  end

  # GET /doctor_pacientes/1
  # GET /doctor_pacientes/1.json
  def show
    @doctor_paciente = DoctorPaciente.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @doctor_paciente }
    end
  end

  # GET /doctor_pacientes/new
  # GET /doctor_pacientes/new.json
  def new
    @doctor_paciente = DoctorPaciente.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @doctor_paciente }
    end
  end

  # GET /doctor_pacientes/1/edit
  def edit
    @doctor_paciente = DoctorPaciente.find(params[:id])
  end

  # POST /doctor_pacientes
  # POST /doctor_pacientes.json
  def create
    @doctor_paciente = DoctorPaciente.new(params[:doctor_paciente])

    respond_to do |format|
      if @doctor_paciente.save
        format.html { redirect_to @doctor_paciente, notice: 'Doctor paciente was successfully created.' }
        format.json { render json: @doctor_paciente, status: :created, location: @doctor_paciente }
      else
        format.html { render action: "new" }
        format.json { render json: @doctor_paciente.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /doctor_pacientes/1
  # PUT /doctor_pacientes/1.json
  def update
    @doctor_paciente = DoctorPaciente.find(params[:id])

    respond_to do |format|
      if @doctor_paciente.update_attributes(params[:doctor_paciente])
        format.html { redirect_to @doctor_paciente, notice: 'Doctor paciente was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @doctor_paciente.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /doctor_pacientes/1
  # DELETE /doctor_pacientes/1.json
  def destroy
    @doctor_paciente = DoctorPaciente.find(params[:id])
    @doctor_paciente.destroy

    respond_to do |format|
      format.html { redirect_to doctor_pacientes_url }
      format.json { head :no_content }
    end
  end
end
