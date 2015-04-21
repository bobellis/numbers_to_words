class Fixnum
  define_method(:numbers_to_words) do
    ones_place = ''
    tens_place = ''
    ones = { 0 => "", 1 => "one", 2 => "two", 3 => "three", 4 => "four", 5 => "five", 6 => "six", 7 => "seven", 8 => "eight", 9 => "nine"}
    multiples_of_ten = {1 => "ten",2 => "twenty",3 => "thirty",4 => "forty",5 => "fifty",6 => "sixty",7 => "seventy",8 => "eighty",9 => "ninety"}
    converted_numbers = self.to_s().split('')
    converted_numbers_length = converted_numbers.length()
    # converted_numbers.each() do |number|
      if converted_numbers_length == 1
        temp_at = (converted_numbers_length -= 1)
        array_index = temp_at.to_i()
        array_loc = converted_numbers.at(array_index)
        ones_place = ones.fetch(array_loc.to_i())
      elsif converted_numbers_length == 2
        temp_at = (converted_numbers_length -= 2)
        array_index = temp_at.to_i()
        array_loc = converted_numbers.at(array_index)
        tens_place = multiples_of_ten.fetch(array_loc.to_i())
      end
    # end
      word_number = tens_place + ' ' + ones_place
  end
end
