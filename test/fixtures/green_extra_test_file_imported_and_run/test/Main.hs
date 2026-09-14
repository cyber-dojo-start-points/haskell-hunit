module Main where

import Test.HUnit
import Hiker
import AnswerSize

-- A second test file runs only once this file imports it and puts its test
-- in the TestList. Cases reaching 2 is what says that happened.
life_the_universe_and_everything_test = TestCase (assertEqual "answer" (42) answer)

tests = TestList [life_the_universe_and_everything_test, the_answer_is_two_digits_long_test]
main = runTestTTAndExit tests
