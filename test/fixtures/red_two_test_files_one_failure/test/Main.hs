module Main where

import Test.HUnit
import Hiker
import AnswerSize

life_the_universe_and_everything_test = TestCase (assertEqual "answer" (42) answer)
the_answer_is_not_the_question_test = TestCase (assertBool "not 54" (answer /= 6 * 9))

tests = TestList [ life_the_universe_and_everything_test
                 , the_answer_is_not_the_question_test
                 , the_answer_is_two_digits_long_test
                 , the_answer_is_three_digits_long_test
                 ]
main = runTestTTAndExit tests
