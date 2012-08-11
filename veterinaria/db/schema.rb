# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120811044341) do

  create_table "administradors", :force => true do |t|
    t.string   "nombre"
    t.string   "apellido"
    t.string   "correo"
    t.integer  "Estado_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "administradors", ["Estado_id"], :name => "index_administradors_on_Estado_id"

  create_table "cita_vacunas", :force => true do |t|
    t.string   "nombre_vacuna"
    t.string   "telefono"
    t.string   "direccion"
    t.date     "fecha_registro"
    t.integer  "Cliente_id"
    t.integer  "Doctor_id"
    t.integer  "Paciente_id"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  add_index "cita_vacunas", ["Cliente_id"], :name => "index_cita_vacunas_on_Cliente_id"
  add_index "cita_vacunas", ["Doctor_id"], :name => "index_cita_vacunas_on_Doctor_id"
  add_index "cita_vacunas", ["Paciente_id"], :name => "index_cita_vacunas_on_Paciente_id"

  create_table "clientes", :force => true do |t|
    t.string   "nombre_cliente"
    t.string   "correo_cliente"
    t.string   "imagen_cliente"
    t.string   "tel_casa_cliente"
    t.string   "tel_cel_cliente"
    t.integer  "Prospecto_id"
    t.integer  "Doctor_id"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  add_index "clientes", ["Doctor_id"], :name => "index_clientes_on_Doctor_id"
  add_index "clientes", ["Prospecto_id"], :name => "index_clientes_on_Prospecto_id"

  create_table "doctor_clientes", :force => true do |t|
    t.text     "nota_cliente"
    t.date     "fecha_doctorcliente"
    t.integer  "Cliente_id"
    t.integer  "Doctor_id"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
  end

  add_index "doctor_clientes", ["Cliente_id"], :name => "index_doctor_clientes_on_Cliente_id"
  add_index "doctor_clientes", ["Doctor_id"], :name => "index_doctor_clientes_on_Doctor_id"

  create_table "doctor_pacientes", :force => true do |t|
    t.text     "nota_paciente"
    t.date     "fecha_doctorpaciente"
    t.text     "condiciones"
    t.integer  "Cliente_id"
    t.integer  "Doctor_id"
    t.datetime "created_at",           :null => false
    t.datetime "updated_at",           :null => false
  end

  add_index "doctor_pacientes", ["Cliente_id"], :name => "index_doctor_pacientes_on_Cliente_id"
  add_index "doctor_pacientes", ["Doctor_id"], :name => "index_doctor_pacientes_on_Doctor_id"

  create_table "doctors", :force => true do |t|
    t.string   "nombre"
    t.string   "apellido"
    t.string   "correo"
    t.integer  "Estado_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "doctors", ["Estado_id"], :name => "index_doctors_on_Estado_id"

  create_table "estados", :force => true do |t|
    t.string   "descripcion"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "imagen_doctor_pacientes", :force => true do |t|
    t.string   "imagen"
    t.integer  "DoctorPaciente_id"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

  add_index "imagen_doctor_pacientes", ["DoctorPaciente_id"], :name => "index_imagen_doctor_pacientes_on_DoctorPaciente_id"

  create_table "pacientes", :force => true do |t|
    t.string   "especie"
    t.string   "raza"
    t.string   "genero"
    t.string   "tipo_sangre"
    t.integer  "esterilizado"
    t.string   "tamanio"
    t.string   "actividad"
    t.decimal  "peso"
    t.date     "fec_nacimiento"
    t.integer  "Cliente_id"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  add_index "pacientes", ["Cliente_id"], :name => "index_pacientes_on_Cliente_id"

  create_table "prospectos", :force => true do |t|
    t.string   "nombre_prospecto"
    t.string   "correo_prospecto"
    t.string   "imagen_prospecto"
    t.string   "tel_casa_prospecto"
    t.string   "tel_cel_prospecto"
    t.integer  "Doctor_id"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

  add_index "prospectos", ["Doctor_id"], :name => "index_prospectos_on_Doctor_id"

end
