class Book < ActiveRecord::Base
  attr_accessible :condition, :isbn, :location, :status, :timeLogged, :title, :weight
end
