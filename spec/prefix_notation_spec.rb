require_relative '../prefix_notation'

RSpec.describe PrefixNotation do

  subject(:pn) { PrefixNotation.new }

  it 'evaluates a positive integer' do
    expect(pn.evaluate('9')).to eq 9
  end

  it 'adds 2 numbers' do
    expect(pn.evaluate('+ 1 2')).to eq 3
  end

  it 'adds more than 2 numbers with a stack' do
    expect(pn.evaluate('+ + 1 2 30')).to eq 33
  end

end
