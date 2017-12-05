-- Adding the following line strings will all have the type isString a => a,
-- defined in Data.String
-- ByteString and Text are examples of String instances
{-# LANGUAGE OverloadedStrings #-}

import Text.Email.Validate

valid = "user@host.com"
invalid = "user@.com"

main = do
        print $ isValid valid
        print $ isValid invalid
        -- emailAddress gets a Data.ByteString and may returns an EmailAddress
        let Just addr = emailAddress valid
        -- let Just addr = emailAddress valid -- > produces an error or exception
        print $ localPart addr
        print $ domainPart addr
