# Haskell Exercises

Small, focused exercises in recursion, list processing and functional problem solving. Several functions solve the same problem in different ways so the tradeoffs are easy to compare.

[![Checks](https://github.com/canquesse/haskell-exercises/actions/workflows/ci.yml/badge.svg)](https://github.com/canquesse/haskell-exercises/actions/workflows/ci.yml)

## Exercise map

| File | Focus |
| --- | --- |
| `returner.hs` | Seven ways to select every nth list element: recursion, `zip`, filtering, `concatMap`, cycling, `drop` and comprehensions |
| `counter.hs` | Character counting with conditionals, guards and accumulators |
| `strings.hs` | Reimplementing string primitives and normalizing palindrome input |
| `fact.hs` | Direct and accumulator-based factorial |
| `pie.hs` | A finite Leibniz-series approximation to pi |
| `tri.hs` | Left- and right-aligned text triangles |

## Run

Install GHC, then load one exercise at a time; files intentionally repeat names while exploring alternatives.

```sh
ghci returner.hs
```

```haskell
returner2 3 [1..10] -- [3,6,9]
returner2 0 [1..10] -- []
```

Run the compile and behavior checks with `bash scripts/check.sh`.

## What these exercises demonstrate

Pattern-based decomposition, recursive base cases, higher-order functions and explicit type signatures. Nonpositive selection intervals return an empty list. The factorial exercises use 1 for nonpositive inputs; they are recursion examples, not a general combinatorics API. Partial string functions are kept to study the difference between total and partial definitions.

This is a learning collection; the value is in readable comparisons and documented edge cases.
