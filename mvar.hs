{-
 - MVar is a library to implement synchronization between threads
 - -}

import Control.Concurrent

ordered = do
    m <- newEmptyMVar -- creates an empty MVar

    -- Writes to MVar
    forkIO $ putMVar m "Hello Haskell"
    forkIO $ putMVar m "Hello MVar!"
    forkIO $ putMVar m "End."

    -- takes elements in order of insertion
    r <- takeMVar m
    print r
    r <- takeMVar m
    print r
    r <- takeMVar m
    print r
    -- this one will block if uncommented
    --r <- takeMVar m
    --print r



chaotic = do
    let m1 = "Hello Haskell"
    let m2 = "Hello Chaos"

    forkIO $ print m1
    forkIO $ print m2
    forkIO $ print "End."

