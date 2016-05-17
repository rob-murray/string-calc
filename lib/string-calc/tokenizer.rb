require_relative "addition"
require_relative "subtraction"
require_relative "multiplication"
require_relative "division"
require_relative "operand"
require "strscan"

module StringCalc
  class Tokenizer
    def initialize
      @tokens = []
      @token_matchers = Set.new [Operand, Addition, Subtraction, Multiplication, Division]
    end

    def parse(input)
      @buffer = StringScanner.new(input)

      until @buffer.eos?
        skip_spaces
        read_tokens
      end

      @tokens
    end

    private

    def read_tokens
      @token_matchers.each do |matcher|
        if token = @buffer.scan(matcher.matching_rule)
          @tokens << matcher.new(token)
        end
      end
    end

    def skip_spaces
      @buffer.skip(/\s+/)
    end
  end
end
