module Main where

import Test.HUnit
import Hiker

-- One test throws and one test has an assertion that is false. Both are
-- reported, and an error outranks a failure when the colour is worked out.
the_initial_answer_test = TestCase (assertEqual "initial" (42) (initial []))
life_the_universe_and_everything_test = TestCase (assertEqual "answer" (42) answer)

tests = TestList [the_initial_answer_test, life_the_universe_and_everything_test]
main = runTestTTAndExit tests
