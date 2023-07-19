class Park
  attr_reader :name,
              :admission_price,
              :vehicles

  def initialize(name, admission_price)
    @name = name
    @admission_price = admission_price
    @vehicles = []
  end

  def add_vehicle(vehicle)
    @vehicles << vehicle
  end

  def passengers
    passenger_list = []

    @vehicles.each do |vehicle|
      vehicle.passengers.each do |passenger|
        passenger_list << passenger
      end
    end
    passenger_list
  end

  def revenue
    adult_count = 0

    @vehicles.each do |vehicle|
      vehicle.passengers.each do |passenger|
        adult_count += 1 if passenger.age >= 18
      end
    end
    adult_count * @admission_price
  end
end