class User < ApplicationRecord
   has_many :dishes, :dependent => :destroy
   validates :name, :presence => true, :uniqueness => true 
end
