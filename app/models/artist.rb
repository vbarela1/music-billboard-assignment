class Artist < ApplicationRecord
validates_presence_of :name, :album 

belongs_to :billboard 

has_many  :songs 

end
