class Product < ActiveRecord::Base
  attr_accessible :description, :manufacturer, :name, :price, :start_date
end
