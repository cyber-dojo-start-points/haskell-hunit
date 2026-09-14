module Hiker where

answer :: Int
answer = 6 * 7

-- The learner has written the case for a list with something in it and has
-- not written the case for the empty list, so initial [] throws at run time
-- rather than failing an assertion.
initial :: [Int] -> Int
initial (x:_) = x
