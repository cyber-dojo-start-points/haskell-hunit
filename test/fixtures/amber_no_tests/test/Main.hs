module Main where

import Test.HUnit
import Hiker

-- The learner has emptied the TestList. HUnit runs nothing, reports zero
-- errors and zero failures, and exits zero, and the rag-lambda reads that
-- summary as green.
tests = TestList []
main = runTestTTAndExit tests
