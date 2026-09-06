#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")/.."
for file in *.hs; do ghci -v0 -ignore-dot-ghci "$file" -e '()'; done
ghci -v0 -ignore-dot-ghci returner.hs -e 'if all (== [3,6,9]) [f 3 [1..10] | f <- [returner1,returner2,returner3,returner4,returner5,returner6,returner7]] && all null [f 0 [1..10] | f <- [returner1,returner2,returner3,returner4,returner5,returner6,returner7]] then putStrLn "List checks passed" else error "List regression"'
ghci -v0 -ignore-dot-ghci strings.hs -e 'if palin3 "A man, a plan, a canal: Panama!" && not (palin3 "hello") && parrot (-1) "a" == "" then putStrLn "String checks passed" else error "String regression"'
ghci -v0 -ignore-dot-ghci fact.hs -e 'if fact1 5 == 120 && fact3 5 == 120 then putStrLn "Factorial checks passed" else error "Factorial regression"'
