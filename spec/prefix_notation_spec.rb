require_relative '../prefix_notation'

RSpec.describe PrefixNotation do
  it "evaluates a positive integer" do
    p = PrefixNotation.new
    result = p.evaluate("9")
    expect(result).to eq 9
  end
end
