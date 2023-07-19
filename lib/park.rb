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
      passenger_list += vehicle.passengers
    end
    passenger_list
  end

  def revenue
    adult_count = 0

    @vehicles.each do |vehicle|
      adult_count += vehicle.num_adults
    end
    adult_count * @admission_price
  end

  def all_attendees
    attendees = []

    @vehicles.each do |vehicle|
      vehicle.passengers.each do |passenger|
        attendees << passenger.name
      end
    end
    attendees.sort
  end

  def minors
    minor_attendees = []

    @vehicles.each do |vehicle|
      vehicle.passengers.each do |passenger|
        minor_attendees << passenger.name if passenger.age < 18
      end
    end
    minor_attendees.sort
  end

  def adults
    adult_attendees = []

    @vehicles.each do |vehicle|
      vehicle.passengers.each do |passenger|
        adult_attendees << passenger.name if passenger.adult?
      end
    end
    adult_attendees.sort
  end
end