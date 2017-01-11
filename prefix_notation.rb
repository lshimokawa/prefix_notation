class PrefixNotation

  def evaluate(expression)
    array = expression.split(' ').reverse
    stack = []
    array.each do |element|
      if ['+', '-', '*', '/'].include? element
        stack.push(stack.pop.send(element, stack.pop))
      else
        stack.push(element.to_i)
      end
    end
    stack.first
  end

end
