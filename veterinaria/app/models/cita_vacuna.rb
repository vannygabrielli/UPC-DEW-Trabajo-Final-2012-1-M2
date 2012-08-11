class CitaVacuna < ActiveRecord::Base
  belongs_to :Cliente
  belongs_to :Doctor
  belongs_to :Paciente
end
