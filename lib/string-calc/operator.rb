require_relative "token"

module StringCalc
  class Operator < Token
    def type
      :operator
    end

    def cast_value
      value.to_s
    end

    def evaluate(left_operand, right_operand)
      0
    end
  end
end
