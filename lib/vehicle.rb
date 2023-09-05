require 'date'

class Vehicle
  attr_reader :vin,
              :year,
              :make,
              :model

  attr_accessor :registration_date,
                :plate_type,
                :engine

  def initialize(vehicle_details)
    @vin = vehicle_details[:vin]
    @year = vehicle_details[:year].to_i
    @make = vehicle_details[:make]
    @model = vehicle_details[:model]
    @engine = vehicle_details[:engine]
    @plate_type = nil
    @registration_date = nil
  end

  def antique?
    (Date.today.year - @year).to_i > 25
  end

  def electric_vehicle?
    @engine == :ev
  end
end
