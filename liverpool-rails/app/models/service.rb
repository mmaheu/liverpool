class Service < ActiveRecord::Base
  attr_accessible :description, :name, :technology, :type
end
