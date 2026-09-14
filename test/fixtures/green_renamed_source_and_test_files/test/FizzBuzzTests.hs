module Main where

import Test.HUnit
import FizzBuzz

-- Neither src/Hiker.hs nor test/Main.hs is here. ghc takes the module name
-- from inside the file, so the file holding main can be called anything.
life_the_universe_and_everything_test = TestCase (assertEqual "answer" (42) answer)

tests = TestList [life_the_universe_and_everything_test]
main = runTestTTAndExit tests
