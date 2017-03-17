# Given an array of randomly generated cars, perform the following operations:
#
# * Remove any duplicate Car objects.
# * Sort the remaining Cars by price.
# * Genarate an array of strings in the format: "<manufacturer>: <model> - <formatted price>"
#     - Car.price is an instance of a Money class https://github.com/RubyMoney/money
#
# Example: ["Dodge: Durango - $1237.45", "Ford: Bronco - $4825.33", ...]

require_relative 'lib/data_generator.rb'
class TestThree
  def run_test
    car_string_array = []
    car_array = DataGenerator.cars
    car_array = car_array.uniq
    car_array = car_array.sort_by{|car| car.price}
    car_array.each do |car|
      car_string_array.push("#{car.manufacturer}: #{car.model} - $#{car.price}")
    end
    car_string_array
  end
end

if __FILE__ == $0
  test = TestThree.new
  result = test.run_test
  puts result
end
