require_relative "operator"

module StringCalc
  # Subtraction operation
  # Matches - or MINUS
  class Subtraction < Operator
    def self.matching_rule
      /[\-]|(MINUS)/
    end

    def priority
      1
    end

    def evaluate(left_operand, right_operand)
      left_operand - right_operand
    end
  end
end
