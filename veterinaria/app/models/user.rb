class User < ActiveRecord::Base
belongs_to :profile

has_many :date_vaccines
has_many :users, :through => :date_vaccines

has_many :attentions
has_many :users, :through => :attentions


end
