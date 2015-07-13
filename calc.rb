#
# Given an piece of arithmatic expressed as a string, perform the calculation
#  and return the value as an Integer
#
#   calc("1 PLUS 2") => 3
#   calc("2 PLUS 5 MINUS 1 PLUS 4") => 10
#
def calc(input_expression)
  tokens = input_expression.split(" ")
  operators_and_values = tokens.map{ |t| _parse_token(t) }.compact
  first_value = operators_and_values.shift
  operators_and_values.each_slice(2).inject(first_value) { |accu, next_op| accu.send(*next_op) }
end

def _parse_token(token)
  if token == "PLUS"
    return "+"
  end

  if token == "MINUS"
    return "-"
  end

  if token == "TIMES"
    return "*"
  end

  if token == "DIV"
    return "/"
  end

  if (Integer(token) rescue nil)
    token.to_i
  end
end
