module Hiker where

-- The learner meant to stop counting at 42 and the guard never holds, so
-- spin tail-calls itself for longer than the kata is given.
answer :: Int
answer = spin 1

spin :: Int -> Int
spin n = if n < 0 then n else spin (n + 1)
