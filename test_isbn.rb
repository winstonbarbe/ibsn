require_relative 'isbn.rb'

# # Tests

# # Test 1
puts "TEST 1: Validate valid ISBN number"
if isbn_verify?("3-598-21508-8") == true
  puts "TEST #1 passed"
else
  puts "TEST #1 failed"
end

# # Test 2
# puts
# puts "TEST 2: Invalidate number that does not divide evenly by 11"
# if isbn_verify?("3-598-21508-9") == false
#   puts "TEST #2 passed"
# else
#   puts "TEST #2 failed"
# end

# # Test 3
# puts
# puts "TEST 3: Validate valid ISBN number that has a final 'digit' of X"
# if isbn_verify?("3-598-21507-X") == true
#   puts "TEST #3 passed"
# else
#   puts "TEST #3 failed"
# end

# # Test 4
# puts
# puts "TEST 4: Invalidate number that ends with a letter other than X"
# if isbn_verify?("3-598-21507-A") == false
#   puts "TEST #4 passed"
# else
#   puts "TEST #4 failed"
# end

# # Test 5
# puts
# puts "TEST 5: Invalidate number that has a letter in the middle"
# if isbn_verify?("3-598-P1581-X") == false
#   puts "TEST #5 passed"
# else
#   puts "TEST #5 failed"
# end

# # Test 6
# puts
# puts "TEST 6: Invalidate number that has a letter in the middle even if it's an X"
# if isbn_verify?("3-598-2X507-9") == false
#   puts "TEST #6 passed"
# else
#   puts "TEST #6 failed"
# end

# # Test 7
# puts
# puts "TEST 7: Validate valid ISBN number even if dashes are not present"
# if isbn_verify?("3598215088") == true
#   puts "TEST #7 passed"
# else
#   puts "TEST #7 failed"
# end

# # Test 8
# puts
# puts "TEST 8: Validate valid ISBN number even if dashes are not present and ends with X"
# if isbn_verify?("359821507X") == true
#   puts "TEST #8 passed"
# else
#   puts "TEST #8 failed"
# end

# # Test 9
# puts
# puts "TEST 9: Invalidate number that has more than 10 alphanumeric characters - even if the first 10 characters contain a valid ISBN"
# if isbn_verify?("98245726788") == false
#   puts "TEST #9 passed"
# else
#   puts "TEST #9 failed"
# end

# # Test 10
# puts
# puts "TEST 10: Invalidate number that has more than 10 alphanumeric characters - even if the extra characters are letters in the middle"
# if isbn_verify?("3-598P-21508-8") == false
#   puts "TEST #10 passed"
# else
#   puts "TEST #10 failed"
# end

# # Test 11
# puts
# puts "TEST 11: Invalidate number that has fewer than 10 alphanumeric characters"
# if isbn_verify?("134456729") == false
#   puts "TEST #11 passed"
# else
#   puts "TEST #11 failed"
# end

