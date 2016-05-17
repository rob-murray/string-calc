require_relative "operand"

module StringCalc
  # Evaluate an expression in postfix notation
  #
  class PostfixEvaluator
    def run(tokens)
      @numbers = []

      tokens.each do |token|
        push_number(token)        if token.type == :operand
        evaluate_operation(token) if token.type == :operator
      end

      @numbers.last.value
    end

    private

    def push_number(token)
      @numbers << token
    end

    def evaluate_operation(operation)
      right_num = @numbers.pop
      left_num  = @numbers.pop

      raise 'Invalid postfix expression' unless right_num && left_num

      result = evaluate(left_num.cast_value, right_num.cast_value, operation)
      @numbers << Operand.new(result)
    end

    def evaluate(left_num, right_num, operation)
      operation.evaluate(left_num, right_num)
    end
  end
end
