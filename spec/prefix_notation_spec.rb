require_relative '../prefix_notation'

RSpec.describe PrefixNotation do

  subject(:pn) { PrefixNotation.new }

  it 'evaluates a positive integer' do
    expect(pn.evaluate('9')).to eq 9
  end

  it "adds 2 numbers" do
    expect(pn.evaluate('+ 1 2')).to eq 3
  end

end
