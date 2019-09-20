{-# LANGUAGE ConstraintKinds  #-}
{-# LANGUAGE FlexibleContexts #-}

module CanonicalTypesError01 where

type {-# CANONICAL #-} Foo a = Show (a -> ())

hello :: Foo Int => (Int -> ()) -> String
hello = show

bar :: String
bar = hello $ const ()

