module Main where

import Test.HUnit
import Hiker

life_the_universe_and_everything_test = TestCase (assertEqual "answer" (42) answer)
twice_the_answer_test = TestCase (assertEqual "twice" (84) (answer * 2))
the_answer_is_odd_test = TestCase (assertBool "odd" (odd answer))

tests = TestList [ life_the_universe_and_everything_test
                 , twice_the_answer_test
                 , the_answer_is_odd_test
                 ]
main = runTestTTAndExit tests
