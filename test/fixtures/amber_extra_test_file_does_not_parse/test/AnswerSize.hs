module AnswerSize where

import Test.HUnit
import Hiker

the_answer_is_two_digits_long_test = TestCase (assertBool "two digits" (answer > 9 && answer < 100
