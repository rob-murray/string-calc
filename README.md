## string-calc

[![Build Status](https://travis-ci.org/rob-murray/string-calc.svg)](https://travis-ci.org/rob-murray/string-calc)

A calculator based on string inputs; speak english... get math. Without the use of **eval**.


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
```


### Tests

Run tests with: `$ rake test`


### License

This project is available for use under the MIT software license.
See LICENSE
