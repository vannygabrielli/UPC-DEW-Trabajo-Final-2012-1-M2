class DoctorClientesController < ApplicationController
  # GET /doctor_clientes
  # GET /doctor_clientes.json
  def index
    @doctor_clientes = DoctorCliente.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @doctor_clientes }
    end
  end

  # GET /doctor_clientes/1
  # GET /doctor_clientes/1.json
  def show
    @doctor_cliente = DoctorCliente.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @doctor_cliente }
    end
  end

  # GET /doctor_clientes/new
  # GET /doctor_clientes/new.json
  def new
    @doctor_cliente = DoctorCliente.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @doctor_cliente }
    end
  end

  # GET /doctor_clientes/1/edit
  def edit
    @doctor_cliente = DoctorCliente.find(params[:id])
  end

  # POST /doctor_clientes
  # POST /doctor_clientes.json
  def create
    @doctor_cliente = DoctorCliente.new(params[:doctor_cliente])

    respond_to do |format|
      if @doctor_cliente.save
        format.html { redirect_to @doctor_cliente, notice: 'Doctor cliente was successfully created.' }
        format.json { render json: @doctor_cliente, status: :created, location: @doctor_cliente }
      else
        format.html { render action: "new" }
        format.json { render json: @doctor_cliente.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /doctor_clientes/1
  # PUT /doctor_clientes/1.json
  def update
    @doctor_cliente = DoctorCliente.find(params[:id])

    respond_to do |format|
      if @doctor_cliente.update_attributes(params[:doctor_cliente])
        format.html { redirect_to @doctor_cliente, notice: 'Doctor cliente was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @doctor_cliente.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /doctor_clientes/1
  # DELETE /doctor_clientes/1.json
  def destroy
    @doctor_cliente = DoctorCliente.find(params[:id])
    @doctor_cliente.destroy

    respond_to do |format|
      format.html { redirect_to doctor_clientes_url }
      format.json { head :no_content }
    end
  end
end
