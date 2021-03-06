require('rspec')
require('scrabble')

describe('String#scrabble') do

  it("returns a scrabble score for a letter") do
    expect("a".scrabble()).to(eq(1))
  end

  it("returns a scrabble score for a word") do
    expect("and".scrabble()).to(eq(4))
  end

  it("does not accept non-letters") do
    expect{"46*#^t".scrabble()}.to raise_error(ArgumentError)
  end

  it("doesn't care about case") do
    expect("aBcD".scrabble()).to(eq(9))
  end
end
