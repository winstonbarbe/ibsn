require 'faker'
p "P".to_i
def isbn_verify?(isbn_string)
  # Your job is to write the code for this method!
  sum = 0
  multiplier = 10
  isbn_arr = isbn_string.chars
  isbn_arr.each do |num|
    if num != "-"
      if num == "X" && num == isbn_arr[-1]
        num = "10"
      elsif ("A".."Z").include?(num)
        return false
      end
      sum += (num.to_i * multiplier)
      multiplier -= 1
    end
  end
  sum % 11 == 0
end

# isbn_verify?("1234567890")
# isbn_verify?("1234567890")
# isbn_verify?("1234567890")
# isbn_verify?("1234567890")
