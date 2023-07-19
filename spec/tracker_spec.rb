require "./lib/passenger"
require "./lib/vehicle"
require "./lib/park"
require "./lib/tracker"

RSpec.describe Tracker do
  describe "#all_attendees" do
    it "returns all attendees names, sorted alphabetically" do
      park = Park.new("Windmill Park", 5)
      vehicle = Vehicle.new("2001", "Honda", "Civic")
      charlie = Passenger.new({"name" => "Charlie", "age" => 18})
      jude = Passenger.new({"name" => "Jude", "age" => 20})    
      taylor = Passenger.new({"name" => "Taylor", "age" => 12})
      jill = Passenger.new({"name" => "Jill", "age" => 10})

      vehicle.add_passenger(charlie)
      vehicle.add_passenger(jude)
      vehicle.add_passenger(taylor)
      vehicle.add_passenger(jill)

      park.add_vehicle(vehicle)

      expect(park.all_attendees).to eq(["Charlie", "Jill", "Jude", "Taylor"])
    end
  end

  describe "#minors" do
    it "returns all minors names, sorted alphabetically" do
      park = Park.new("Windmill Park", 5)
      vehicle = Vehicle.new("2001", "Honda", "Civic")
      charlie = Passenger.new({"name" => "Charlie", "age" => 18})
      jude = Passenger.new({"name" => "Jude", "age" => 20})    
      taylor = Passenger.new({"name" => "Taylor", "age" => 12})
      jill = Passenger.new({"name" => "Jill", "age" => 10})

      vehicle.add_passenger(charlie)
      vehicle.add_passenger(jude)
      vehicle.add_passenger(taylor)
      vehicle.add_passenger(jill)

      park.add_vehicle(vehicle)

      expect(park.minors).to eq(["Jill", "Taylor"])
    end
  end

  describe "#adults" do
    it "returns all adults names, sorted alphabetically" do
      park = Park.new("Windmill Park", 5)
      vehicle = Vehicle.new("2001", "Honda", "Civic")
      charlie = Passenger.new({"name" => "Charlie", "age" => 18})
      jude = Passenger.new({"name" => "Jude", "age" => 20})    
      taylor = Passenger.new({"name" => "Taylor", "age" => 12})
      jill = Passenger.new({"name" => "Jill", "age" => 10})
      eliza = Passenger.new({"name" => "Eliza", "age" => 21})

      vehicle.add_passenger(charlie)
      vehicle.add_passenger(jude)
      vehicle.add_passenger(taylor)
      vehicle.add_passenger(jill)
      vehicle.add_passenger(eliza)

      park.add_vehicle(vehicle)

      expect(park.adults).to eq(["Charlie", "Eliza", "Jude"])
    end
  end
end