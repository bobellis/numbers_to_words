require('rspec')
require('numbers_to_words.rb')

describe('String#numbers_to_words') do
  it('take a single digit Fixnum and return the string value') do
    expect(4.numbers_to_words()).to(eq("four"))
  end

  it("takes a two digit number that's a multiple of 10 and returns the string value") do
    expect(20.numbers_to_words()).to(eq("twenty"))
  end

  it('takes a two digit number that is not a multiple of 10 and returns the string value') do
    expect(23.numbers_to_words()).to(eq("twenty three"))
  end

  it('takes a two digit number that is between 10 and 19 and returns the string value') do
    expect(18.numbers_to_words()).to(eq("eighteen"))
  end

  it('takes three digit number that is a multiple of 100 and returns the string value') do
    expect(200.numbers_to_words()).to(eq("two hundred"))
  end

  it('takes a three digit number with a teens component') do
    expect(213.numbers_to_words()).to(eq("two hundred thirteen"))
  end

  it('takes three digit number with a zero value in the tens place') do
    expect(704.numbers_to_words()).to(eq("seven hundred four"))
  end
end
