class PrefixNotation

  def evaluate(expression)
    array = expression.split(' ').reverse
    stack = []
    array.each do |element|
      if ['+', '-', '*', '/'].include? element
        operator = element
        operand_1 = stack.pop
        operand_2 = stack.pop
        
        case operator
        when '+'; result = operand_1 + operand_2
        when '-'; result = operand_1 - operand_2
        when '*'; result = operand_1 * operand_2
        when '/'; result = operand_1 / operand_2
        end
        stack.push(result)
      else
        stack.push(element.to_i)
      end
    end
    stack.first
  end
end
