class PrefixNotation

  def evaluate(expression)
    stack = []
    expression.split(' ').reverse.each { |element| (['+', '-', '*', '/'].include? element) ? stack.push(stack.pop.send(element, stack.pop)) : stack.push(element.to_i) }
    stack.first
  end

end
