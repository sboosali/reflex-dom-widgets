
{-# OPTIONS_GHC -fno-warn-missing-signatures #-} -- to test inference

{-| This module provides an example program. 
Please read the source too <https://hackage.haskell.org/package/reflex-dom-widgets/docs/src/Reflex-Dom-Widgets-Example.html (direct Hackage link)>. 

Being a @library@ module, it's typechecked with the package, 
and thus should always build.

Only public interfaces are imported (i.e. no @.Internal@s),
and there are minimal other dependencies. 

'main' is executed by the @reflex-dom-widgets-example@ executable. 

-}
module Reflex.Dom.Widgets.Example where

import Reflex.Dom.Widgets()

import System.Environment

import Prelude

{-|

Running:

@
cabal build && cabal run example-reflex-dom-widgets
@

@
stack build && stack exec -- example-reflex-dom-widgets
@

-}
main :: IO ()
main = do
 arguments <- getArgs >>= \case
  [s] -> return (s)
  _ -> return ("")
 mainWith arguments

mainWith s = do
 putStrLn s
 putStrLn "(Reflex.Dom.Widgets.Example...)"

