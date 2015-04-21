require('rspec')
require('numbers_to_words.rb')

describe('String#numbers_to_words') do
  it('take a single digit Fixnum and return the string value') do
    expect(4.numbers_to_words()).to(eq("four"))
  end
  it("takes a two digit number that's a multiple of 10 and returns the string value") do
    expect(20.numbers_to_words()).to(eq("twenty"))
  end
end
