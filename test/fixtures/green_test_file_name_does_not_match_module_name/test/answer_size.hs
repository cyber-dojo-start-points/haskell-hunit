module AnswerSize where

import Test.HUnit
import Hiker

-- The file is answer_size.hs and the module is AnswerSize. ghc is handed the
-- file by name, and takes the module name from inside it, so the two need
-- not agree and the test in here still runs.
the_answer_is_two_digits_long_test = TestCase (assertBool "two digits" (answer > 9 && answer < 100))
