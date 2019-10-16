# Prime Factors

Compute the prime factors of a given natural number.

A prime number is only evenly divisible by itself and 1.

Note that 1 is not a prime number.

## Example

The prime factorization of 5040 is 

2^4 × 3^2 × 5^1 × 7^1

We want our output to be
[[2, 4], [3, 2], [5, 1], [7, 1]]
  
## Exception messages

Sometimes it is necessary to raise an exception. When you do this, you should include a meaningful error message to
indicate what the source of the error is. This makes your code more readable and helps significantly with debugging. Not
every exercise will require you to raise an exception, but for those that do, the tests will only pass if you include
a message.

To raise a message with an exception, just write it as an argument to the exception type. For example, you should write:

```julia
throw(DomainError("Meaningful message indicating the source of the error"))
```

 

## Submitting Exercises

Note that, when trying to submit an exercise, make sure the solution is in the `$EXERCISM_WORKSPACE/julia/prime-factors` directory.

You can find your Exercism workspace by running `exercism debug` and looking for the line that starts with `Workspace`.

For more detailed information about running tests, code style and linting,
please see [Running the Tests](http://exercism.io/tracks/julia/tests).

## Source

The Prime Factors Kata by Uncle Bob [http://butunclebob.com/ArticleS.UncleBob.ThePrimeFactorsKata](http://butunclebob.com/ArticleS.UncleBob.ThePrimeFactorsKata)

## Submitting Incomplete Solutions

It's possible to submit an incomplete solution so you can see how others have completed the exercise.
