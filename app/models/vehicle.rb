class Vehicle < ApplicationRecord
   validates :brand, :model, :year, :plate, :kind, presence: true
end
