# The DataGenerator class has a CAR_DATA constant that is an Array of OpenStruct objects.
# Each OpenStruct object has two properties:
#   manufacturer: A car manufacturer.
#   models: An array of car models.
#
# Implement the run_test method to generate an array of all possible cars.
# Each array item should be a string in the form "manufacturer: model"
#   Example:
#   [ "Toyota: Camry", "Dodge: Durango", ... ]


require_relative 'lib/data_generator.rb'
class TestOne
  def run_test
    all_cars = []
   
    DataGenerator::CAR_DATA.each do |struct|
      puts struct.models
      models = struct.models
      models.each do |model|
        newcar = Car.new({
        :price => Money.new(rand(1000000), "USD"),
        :color => DataGenerator::COLORS[rand(DataGenerator::COLORS.length)],
        :manufacturer => struct.manufacturer,
        :model => model,
        :year => (1970 + rand(40))
        })
        all_cars.push(newcar)
      end
    end
    all_cars
  end
end

if __FILE__ == $0
  test = TestOne.new
  puts test.run_test
end
