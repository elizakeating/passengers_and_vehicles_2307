require "./lib/passenger"

RSpec.describe Passenger do
  describe "#initialize" do
    it "exists" do
      charlie = Passenger.new({"name" => "Charlie", "age" => 18})    
      taylor = Passenger.new({"name" => "Taylor", "age" => 12})    
      
      expect(charlie).to be_a(Passenger)
      expect(taylor).to be_a(Passenger)
    end
  end
  
  describe "#name" do
    it "returns name of the passenger" do
      charlie = Passenger.new({"name" => "Charlie", "age" => 18})    
      taylor = Passenger.new({"name" => "Taylor", "age" => 12})    
      
      expect(charlie.name).to eq("Charlie")
    end
  end
  
  describe "#age" do
    it "returns age of the passenger" do
      charlie = Passenger.new({"name" => "Charlie", "age" => 18})    
      taylor = Passenger.new({"name" => "Taylor", "age" => 12})    
      
      expect(charlie.age).to eq(18)
    end
  end
  
  describe "#adult?" do
    it "returns whether or not the passenger is an adult" do
      charlie = Passenger.new({"name" => "Charlie", "age" => 18})    
      taylor = Passenger.new({"name" => "Taylor", "age" => 12})    
      
      expect(charlie.adult?)
      expect(taylor.adult?)
    end
  end
  
  describe "#driver?" do
    it "returns whether or not the passenger is a driver" do
      charlie = Passenger.new({"name" => "Charlie", "age" => 18})    
      taylor = Passenger.new({"name" => "Taylor", "age" => 12})    
      
      expect(charlie.driver?).to eq(false)
    end
  end
  
  describe "#drive" do
    it  "has the passenger drive" do
      charlie = Passenger.new({"name" => "Charlie", "age" => 18})    
      taylor = Passenger.new({"name" => "Taylor", "age" => 12})    

      charlie.drive

      expect(charlie.driver?).to eq(true)
    end
  end
end