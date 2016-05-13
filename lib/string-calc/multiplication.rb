require_relative "operator"

module StringCalc
  # Multiplication operation
  # Matches * or TIMES
  class Multiplication < Operator
    def self.matching_rule
      /[*]|(TIMES)/
    end

    def priority
      2
    end

    def evaluate(left_operand, right_operand)
      left_operand * right_operand
    end
  end
end
