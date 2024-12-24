require 'faker'
system("clear")

puts "-------------------------"
def isbn_verify?(isbn_string)
  # Your job is to write the code for this method
  status = true
  sum = 0
  isbn_arr = isbn_string.chars
  isbn_arr[-1] = "10" if isbn_arr[-1] == "X"
  fixed_isbn_arr = []
  isbn_arr.each do |item|
    if ("A".."Z").include?(item)
      status = false
    else
      if ("0".."10").include?(item)
        fixed_isbn_arr << item.to_i
      end
    end
  end
  if fixed_isbn_arr.length == 10
    fixed_isbn_arr.reverse.each_with_index do |num, index|
      sum += (num * (index + 1))
    end
  else
    status = false
  end
  status = false if sum % 11 != 0
  p sum
  status
end

# p isbn_verify?("3-598-21508-8")
# p isbn_verify?("123456789X")
# p isbn_verify?("1234-5678-90")
# p isbn_verify?("1234567890140")
