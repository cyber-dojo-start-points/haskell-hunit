module Main where

import Test.HUnit
import Hiker

the_initial_answer_test = TestCase (assertEqual "initial" (42) (initial []))

tests = TestList [the_initial_answer_test]
main = runTestTTAndExit tests
