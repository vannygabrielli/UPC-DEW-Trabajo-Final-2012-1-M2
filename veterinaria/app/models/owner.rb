class Owner < ActiveRecord::Base
has_many:patiens

has_many :date_vaccines
has_many :owners, :through => :date_vaccines

has_many :attentions
has_many :owners, :through => :attentions

end
