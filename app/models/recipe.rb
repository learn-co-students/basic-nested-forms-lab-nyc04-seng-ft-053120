class Recipe < ActiveRecord::Base
  has_many :ingredients 

  #sets the ingredients_attributes method we need in params
  accepts_nested_attributes_for :ingredients 
end
