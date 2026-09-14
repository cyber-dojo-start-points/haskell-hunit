module Main where

import Test.HUnit
import Hiker

-- The test names theAnswer, which src/Hiker.hs never defines.
life_the_universe_and_everything_test = TestCase (assertEqual "answer" (42) theAnswer)

tests = TestList [life_the_universe_and_everything_test]
main = runTestTTAndExit tests
