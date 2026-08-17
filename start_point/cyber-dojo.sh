#!/usr/bin/env bash
set -Eeu

# ghc is called directly, rather than through cabal, because this runs with no
# network access and cabal wants to reach hackage every time. HUnit is already
# installed here, so ghc needs nothing downloaded.
#
# Every .hs file under src and test is compiled, so a file you are partway
# through writing still shows its errors. A test only runs once test/Main.hs
# imports it and adds it to the TestList.

ghc -isrc -itest -outputdir /tmp/objs -o /tmp/tests $(find src test -name '*.hs')
/tmp/tests
