module Hiker where

import Debug.Trace (trace)

-- The learner is watching when this gets evaluated, and has not taken the
-- trace out yet. It goes to stderr, where HUnit writes too.
answer :: Int
answer = trace "answer was called" (6 * 7)
