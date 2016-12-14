class Calculation
  def initialize input
    @input = input
  end

  def get_result
      start_time = Time.now
      result = calculate_for_input
      puts "Factorial of the number is: #{result}"
      end_time = Time.now
      puts "Calculated the factorial in #{end_time - start_time} seconds"
  end

  def calculate_for_input
    total = 1
    @input.downto(1) { |n| total *= n }
    total
  end

end

puts "Please write an Integer"
@input = Integer(gets) rescue nil
while @input == nil do
  puts "This is not an Integer, please write an Integer"
  @input = Integer(gets) rescue nil
end
Calculation.new(@input).get_result
