#runhaskell *test*.hs

#runghc -package HUnit *test*.hs


#!/usr/bin/env bash
set -Eeu

#whoami
#cd ~
#pwd

ln -s /root/.cache /home/sandbox/.cache

#cabal --active-repositories=":none" configure
echo 1
#cabal --enable-tests configure 
echo 2
# https://github.com/haskell/cabal/issues/11185
cabal --active-repositories=:none build -v2 --offline
echo 3
cabal test
echo 4
