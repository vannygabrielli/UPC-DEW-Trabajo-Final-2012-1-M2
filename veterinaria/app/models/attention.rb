class Attention < ActiveRecord::Base
  belongs_to :users
  belongs_to :owners
  belongs_to :patients
end
