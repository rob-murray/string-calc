require_relative "operator"

module StringCalc
  # Addition operation
  # Matches + or PLUS
  class Addition < Operator
    def self.matching_rule
      /[+]|(PLUS)/
    end

    def priority
      1
    end

    def evaluate(left_operand, right_operand)
      left_operand + right_operand
    end
  end
end
