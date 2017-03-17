# Given an array of randomly generated cars, return all Car objects  made between 1982 and 1993.

require_relative 'lib/data_generator.rb'
class TestTwo
  def run_test
    car_array = DataGenerator.cars
    result_arrat = []
    car_array.each do |car|
      if car.year == 1982 or car.year == 1993 then
        puts "car model #{car.model} car year #{car.year}"
        result_arrat.push(car)
      end
    end
  end
end

if __FILE__ == $0
  test = TestTwo.new
  test.run_test
end
