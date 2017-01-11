class PrefixNotation

  def evaluate(expression)
    stack = []
    expression.split(' ').reverse.each do |element|
      (['+', '-', '*', '/'].include? element) ? stack.push(stack.pop.send(element, stack.pop)) : stack.push(element.to_i)
    end
    stack.first
  end

end
