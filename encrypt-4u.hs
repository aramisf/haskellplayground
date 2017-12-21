-- MD5 algorithms
-- to install the package supporting this library, just run `cabal install puremd5`
{-# LANGUAGE OverloadedStrings #-}

import Data.Digest.Pure.MD5
import Data.Digest.Pure.SHA
import Data.ByteString.Lazy.Char8
import Data.Binary

main :: IO ()
main = do
    Prelude.putStrLn "Input a string: "
    a <- getLine
    Prelude.putStr "The md5 hash of `"
    Prelude.putStr a
    Prelude.putStr "' is:"
    print (md5 (encode a))
    Prelude.putStr "-> its sha1 is: "
    print (sha1 (encode a))
    Prelude.putStr "-> its sha256 is: "
    print (sha256 (encode a))
    Prelude.putStr "-> its sha512 is: "
    print (sha512 (encode a))

