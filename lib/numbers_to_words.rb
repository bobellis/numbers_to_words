class Fixnum
  define_method(:numbers_to_words) do
    ones_place = ''
    tens_place = ''
    ones = { 0 => "", 1 => "one", 2 => "two", 3 => "three", 4 => "four", 5 => "five", 6 => "six", 7 => "seven", 8 => "eight", 9 => "nine"}
    multiples_of_ten = {1 => "ten",2 => "twenty",3 => "thirty",4 => "forty",5 => "fifty",6 => "sixty",7 => "seventy",8 => "eighty",9 => "ninety"}
    teens = {0 => "ten", 1 => "eleven", 2 => "twelve", 3 => "thirteen",4 => "fourteen", 5 => "fifteen", 6 => "sixteen", 7 => "seventeen", 8 => "eighteen", 9 => "nineteen"}
    converted_numbers = self.to_s().split('')
    converted_numbers_length = converted_numbers.length()
    # converted_numbers.each() do |number|
    if converted_numbers_length == 1
      array_index = (converted_numbers_length - 1)
      array_loc = converted_numbers.at(array_index).to_i()
      ones_place = ones.fetch(array_loc)
      word_number = ones_place
    elsif converted_numbers_length == 2 && converted_numbers.at(1) == "0"
      array_index = (converted_numbers_length - 2)
      array_loc = converted_numbers.at(array_index).to_i()
      tens_place = multiples_of_ten.fetch(array_loc)
      word_number = tens_place
    elsif converted_numbers_length == 2 && converted_numbers.at(0) != "1"
      tens_array_loc = converted_numbers.at(0).to_i()
      tens_place = multiples_of_ten.fetch(tens_array_loc)
      ones_array_loc = converted_numbers.at(1).to_i()
      ones_place = ones.fetch(ones_array_loc)
      word_number = tens_place + ' ' + ones_place
    elsif converted_numbers_length == 2
      teens_array_loc = converted_numbers.at(1).to_i()
      teens_place = teens.fetch(teens_array_loc)
      word_number = teens_place
    elsif converted_numbers_length == 3
      hundreds_array_loc = converted_numbers.at(0).to_i()
      hundreds_place = ones.fetch(hundreds_array_loc)
      word_number = hundreds_place + " hundred"
    end
    word_number
  end
end
