#
# Given an piece of arithmatic expressed as a string, perform the calculation
#  and return the value as an Integer
#
#   calc("1 PLUS 2") => 3
#   calc("2 PLUS 5 MINUS 1 PLUS 4") => 10
#   calc("1 + 2") => 3
#   calc("2 + 5 - 1 TIMES 4") => 3
#
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "string-calc"

def calc(input_expression)
  StringCalc.calc(input_expression)
end
