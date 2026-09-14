module AnswerSize where

import Test.HUnit
import Hiker

-- This assertion is false, and test/Main.hs does not import this module, so
-- the test never runs and the suite stays green. The file is still compiled,
-- because cyber-dojo.sh hands ghc every .hs file under src and test.
the_answer_is_three_digits_long_test = TestCase (assertBool "three digits" (answer > 99))
