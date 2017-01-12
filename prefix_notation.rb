class PrefixNotation

  def evaluate(expression)
    expression.split.reverse.reduce([]) { |stack, element| stack.push((['+', '-', '*', '/'].include? element) ? stack.pop.send(element, stack.pop) : element.to_i) }.pop
  end

end
