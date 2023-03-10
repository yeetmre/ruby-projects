puts "Simple calculator"
20.times { print "-" }
puts
puts "Please enter your first number"
first_number = gets.chomp
puts "Please enter your second number"
second_number = gets.chomp
puts"What do you want to do with these numbers?\n1)multiply\n2)divide\n3)subtract\n4)sum\n5)mod"
choice=gets.chomp.to_i
case choice
when 1
  puts "The first number multiplied by the second number is: #{first_number.to_f * second_number.to_f}"
when 2
  puts "The first number divided by the second number is: #{first_number.to_f / second_number.to_f}"
when 3
  puts "The first number subtracted from the second number is: #{second_number.to_f - first_number.to_f}"
when 4
  puts "The first number added to the second number is: #{second_number.to_f + first_number.to_f}"
when 5
  puts "The first number mod the second number is: #{first_number.to_f % second_number.to_f}"
else
  puts "wrong number"

end






