{-# OPTIONS_GHC -ddump-simpl-iterations -ddump-to-file -dsuppress-uniques #-}

module Main where

import Control.Concurrent

main = do
  t <- forkOn 0 (return ())
  threadCapability t >>= print
  t <- forkOn 1 (return ())
  threadCapability t >>= print
