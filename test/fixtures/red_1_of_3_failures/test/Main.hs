module Main where

import Test.HUnit
import Hiker

the_answer_is_two_digits_long_test = TestCase (assertBool "two digits" (answer > 9 && answer < 100))
the_answer_is_even_test = TestCase (assertBool "even" (even answer))
life_the_universe_and_everything_test = TestCase (assertEqual "answer" (42) answer)

tests = TestList [ the_answer_is_two_digits_long_test
                 , the_answer_is_even_test
                 , life_the_universe_and_everything_test
                 ]
main = runTestTTAndExit tests
