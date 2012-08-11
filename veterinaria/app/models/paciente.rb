class Paciente < ActiveRecord::Base
  belongs_to :Cliente
end
