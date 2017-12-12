import System.Process

main = do
      -- Compiling the C program
      system "gcc -o hello_haskell hello_haskell.c"
      system "./hello_haskel"

