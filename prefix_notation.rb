class PrefixNotation

  def evaluate(expression)
    array = expression.split(' ')
    if array.size == 1
      result = array[0].to_i    
    else
      result = array[1].to_i + array[2].to_i
    end
  end
end
