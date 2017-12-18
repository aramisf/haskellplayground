-- SHA algorithms
-- to install the package supporting this library, just run `cabal install sha`
{-# LANGUAGE OverloadedStrings #-}

import Data.Digest.Pure.SHA
import Data.ByteString.Lazy.Char8

main = do
    Prelude.putStrLn "SHA algorithms:"
    print $ sha1 "https://www.github.com/aramisf"   -- output with exaclty 160 bits
    print $ sha256 "https://www.github.com/aramisf" -- output with exactly 256 bits
    print $ sha512 "https://www.github.com/aramisf" -- output with exactly 512 bits

    -- HMAC using secret key and the message

    Data.ByteString.Lazy.Char8.putStrLn "\nNow with HMACs"
    print $ hmacSha1 "s3kre7Ke1" "https://www.github.com/aramisf"   -- output with exaclty 160 bits
    print $ hmacSha256 "Pas5W0rd" "https://www.github.com/aramisf"  -- output with exactly 256 bits
    print $ hmacSha512 "123change" "https://www.github.com/aramisf" -- output with exactly 512 bits
