require_relative "token"

module StringCalc
  class Operand < Token
    def self.matching_rule
      /\d+/
    end

    def type
      :operand
    end

    def cast_value
      value.to_i
    end
  end
end
