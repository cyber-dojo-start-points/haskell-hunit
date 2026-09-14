module Main where

import Test.HUnit
import Hiker

-- HUnit catches the exception the first test throws and carries on, so the
-- second test runs and passes. Cases and Tried both reach 2.
the_initial_answer_test = TestCase (assertEqual "initial" (42) (initial []))
life_the_universe_and_everything_test = TestCase (assertEqual "answer" (42) answer)

tests = TestList [the_initial_answer_test, life_the_universe_and_everything_test]
main = runTestTTAndExit tests
