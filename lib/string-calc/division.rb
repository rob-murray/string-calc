require_relative "operator"

module StringCalc
  # Division operation
  # Matches / or DIV
  class Division < Operator
    def self.matching_rule
      /[\/]|(DIV)/
    end

    def priority
      2
    end

    def evaluate(left_operand, right_operand)
      left_operand / right_operand
    end
  end
end
