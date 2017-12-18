-- MD5 algorithms
-- to install the package supporting this library, just run `cabal install puremd5`
{-# LANGUAGE OverloadedStrings #-}

import Data.Digest.Pure.MD5
import Data.ByteString.Lazy.Char8

main = print $ md5 "https://www.github.com/aramisf"


