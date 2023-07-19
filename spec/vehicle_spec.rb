require "./lib/passenger"
require "./lib/vehicle"

RSpec.describe Vehicle do
  describe "#initialize" do
    it "exists" do
      vehicle = Vehicle.new("2001", "Honda", "Civic")
      
      expect(vehicle).to be_a(Vehicle)
    end
  end
  
  describe "#year" do
    it "returns year of vehicle" do
      vehicle = Vehicle.new("2001", "Honda", "Civic")
      
      expect(vehicle.year).to eq("2001")
    end
  end
  
  describe "#make" do
    it "returns the make of the vehicle" do
      vehicle = Vehicle.new("2001", "Honda", "Civic")
      
      expect(vehicle.make).to eq("Honda")
    end
  end
  
  describe "#model" do
    it "returns the model of the vehicle" do
      vehicle = Vehicle.new("2001", "Honda", "Civic")
      
      expect(vehicle.model).to eq("Civic")
    end
  end
  
  describe "#speeding?" do
    it "returns whether or not the vehicle is speeding" do
      vehicle = Vehicle.new("2001", "Honda", "Civic")
      
      expect(vehicle.speeding?).to eq(false)
    end
  end
  
  describe "#speed" do
    it "makes the vehicle speed" do
      vehicle = Vehicle.new("2001", "Honda", "Civic")
      
      vehicle.speed
      
      expect(vehicle.speeding?).to eq(true)
    end
  end
  
  describe "#passengers" do
    it "lists the passengers of the vehicle" do
      vehicle = Vehicle.new("2001", "Honda", "Civic")
      
      expect(vehicle.passengers).to eq([])
    end
  end
  
  describe "#add_passenger" do
    it "adds passengers to the vehicle" do
      vehicle = Vehicle.new("2001", "Honda", "Civic")

      charlie = Passenger.new({"name" => "Charlie", "age" => 18})
      expect(charlie).to be_a(Passenger)
      
      jude = Passenger.new({"name" => "Jude", "age" => 20})    
      expect(jude).to be_a(Passenger)
      
      taylor = Passenger.new({"name" => "Taylor", "age" => 12})
      expect(taylor).to be_a(Passenger)

      vehicle.add_passenger(charlie)    
      vehicle.add_passenger(jude)    
      vehicle.add_passenger(taylor) 
      
      expect(vehicle.passengers).to eq([charlie, jude, taylor])
    end
  end
  
  describe "#num_adults" do
    it "returns the number of adults in  the vehicle" do
      vehicle = Vehicle.new("2001", "Honda", "Civic")
    
      charlie = Passenger.new({"name" => "Charlie", "age" => 18})
      expect(charlie).to be_a(Passenger)
      
      jude = Passenger.new({"name" => "Jude", "age" => 20})    
      expect(jude).to be_a(Passenger)
      
      taylor = Passenger.new({"name" => "Taylor", "age" => 12})
      expect(taylor).to be_a(Passenger)
    
      vehicle.add_passenger(charlie)    
      vehicle.add_passenger(jude)    
      vehicle.add_passenger(taylor) 
      
      expect(vehicle.num_adults).to eq(2)
    end
  end
end