require('rspec')
require('numbers_to_words.rb')

describe('String#numbers_to_words') do
  it('take a single digit Fixnum and return the string value') do
    expect(4.numbers_to_words()).to(eq("four"))
  end
end
