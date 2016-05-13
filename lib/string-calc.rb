require "string-calc/operand"
require "string-calc/tokenizer"
require "string-calc/expression_parser"
require "string-calc/postfix_evaluator"

# Base module for library interface
module StringCalc
  class << self
    #
    def calc(input_expression)
      input_expression = input_expression.to_s

      # If the input is just one number don't bother evaluating it
      if input_expression.scan(Operand.matching_rule).size == 1
        return Operand.new(input_expression).cast_value
      end

      # Parse input string
      lexer  = Tokenizer.new
      tokens = lexer.parse(input_expression)

      # Convert to postfix notation
      parser      = ExpressionParser.new(tokens)
      postfix_exp = parser.run

      # Evaluate
      PostfixEvaluator.new.run(postfix_exp.output)
    end
  end
end
