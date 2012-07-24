class Patient < ActiveRecord::Base
belongs_to :owner

has_many :date_vaccines
has_many :patients, :through => :date_vaccines

end
