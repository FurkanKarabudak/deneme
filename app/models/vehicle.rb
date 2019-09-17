class Vehicle < ApplicationRecord
  attr_accessor :driver_name
  has_one :drivers
end
