class Billboard < ApplicationRecord

validates_presence_of :name 

has_many :artists
has_many :songs 
end
