## string-calc

[![Build Status](https://travis-ci.org/rob-murray/string-calc.svg)](https://travis-ci.org/rob-murray/string-calc)

A *Ruby* calculator based on string inputs; speak english... get math. Without the use of **eval**. With the correct order of precedence too :bowtie:


### How to use

Given an piece of arithmatic expressed as a string, perform the calculation and return the value as an Integer.

A play thing.

```
require "./calc"

> calc("1 PLUS 2")
=> 3
> calc("2 PLUS 5 MINUS 1 PLUS 4")
=> 10
> calc("2 TIMES 4 MINUS 3")
=> 5
> calc("10 DIV 2 PLUS 6 MINUS 1")
=> 10
> calc("1 + 2")
=> 3
> calc("2 + 5 - 1 TIMES 4")
=> 3
```


### Tests

Run tests with: `$ rake test`


### Thanks

> Implementation taken from [https://github.com/matugm/math-eval](https://github.com/matugm/math-eval) :raised_hands:


### License

This project is available for use under the MIT software license.
See LICENSE
