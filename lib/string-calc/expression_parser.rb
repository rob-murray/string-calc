module StringCalc
  # Convert an infix expression to postfix
  # Uses the shunting yard algorithm
  class ExpressionParser
    attr_reader :output

    def initialize(tokens)
      @tokens = tokens
      @output    = []
      @operators = []
    end

    def run
      @tokens.each do |token|
        push_number(token)      if token.type == :operand
        process_operator(token) if token.type == :operator
      end

      @output += @operators.reverse

      self
    end

    def to_s
      @output.map(&:value).join(" ")
    end

    private

    def push_number(token)
      @output << token
    end

    def process_operator(token)
      while operator_priority_is_less_or_equal_than?(token)
        @output << @operators.pop
      end

      @operators << token
    end

    def operator_priority_is_less_or_equal_than?(token)
      @operators.last && (token.priority <= @operators.last.priority)
    end
  end
end
