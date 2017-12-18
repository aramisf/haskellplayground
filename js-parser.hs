-- In order to use the library here, one must install the language-javascript
-- package, by running the following command:
-- `cabal install language-javascript`

import Language.JavaScript.Parser

main = do
    -- read js file:
    source <- readFile "example.js"
    badSource <- readFile "bad-example.js"

    -- parsing the file into a variable
    let s = parse source "example.js"
    let s2 = parse badSource "bad-example.js"

    -- the output is an Abstract Syntax Tree (AST)
    putStrLn "This is the result of parsing the file:"
    print s

    putStrLn "\nAnd this is the bad example"
    print s2


    putStrLn "\nAnd this is the code tranlated to pure js"
    -- Formatting outputs
    case s of
      Left err -> print err

      -- renderToString receives a JSNode and returns a String. Prints js code
      -- in a readable way
      Right output -> putStrLn $ renderToString output

    putStrLn "\nAnd this is the BAD code tranlated to pure js"
    -- Formatting outputs
    case s2 of
      Left err -> print err

      -- renderToString receives a JSNode and returns a String. Prints js code
      -- in a readable way
      Right output -> putStrLn $ renderToString output
