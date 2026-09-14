module Hiker where

import Debug.Trace (trace)

-- The learner put a trace inside a recursion to see what was happening. It
-- goes to stderr, where HUnit writes too, and prints far more than the 50K
-- the runner keeps, so the summary line the colour rests on is cut off the
-- end.
answer :: Int
answer = noisy 5000 (6 * 9)

noisy :: Int -> Int -> Int
noisy 0 x = x
noisy n x = trace ("debug: answer was called, n is " ++ show n) (noisy (n - 1) x)
