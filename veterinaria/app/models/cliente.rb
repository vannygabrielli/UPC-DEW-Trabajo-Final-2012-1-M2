class Cliente < ActiveRecord::Base
  belongs_to :Prospecto
  belongs_to :Doctor
end
