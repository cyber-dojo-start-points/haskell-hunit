module Main where

import Test.HUnit
import Hiker
import Nested.AnswerSize

life_the_universe_and_everything_test = TestCase (assertEqual "answer" (42) answer)

tests = TestList [life_the_universe_and_everything_test, the_answer_is_two_digits_long_test]
main = runTestTTAndExit tests
