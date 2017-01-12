class PrefixNotation

  def evaluate(expression)
    stack = []
    expression.split(' ').reverse.each { |element| stack.push((['+', '-', '*', '/'].include? element) ? stack.pop.send(element, stack.pop) : element.to_i) }
    stack.first
  end

end
