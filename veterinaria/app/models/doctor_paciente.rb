class DoctorPaciente < ActiveRecord::Base
  belongs_to :Cliente
  belongs_to :Doctor
end
