-- JSON \o/

module JSON ( JData(..)
              , getStr
              , getBoo
              , getDouble
              , getInt
              , getObj
              , getVec
              ) where

data JData  = JString String
            | JNumber Double
            | JBool Bool
            | JNull
            | JObj [(String, JData)]
            | JVector [JData]
              deriving(Eq, Show, Ord)


s = JString "test string"
n = JNumber 5.31245
b = JBool True
nul = JNull
o = JObj [("key", JString "value")]
v = JVector [JBool True, JString "another string", JNull, JNumber 42.5]



getStr :: JData -> Maybe String
getStr (JString str) = Just str
getStr _ = Nothing

getInt :: JData -> Maybe Integer
getInt (JNumber num) = Just (truncate num)
getInt _ = Nothing

getBoo :: JData -> Maybe Bool
getBoo (JBool bool) = Just bool
getBoo _ = Nothing

getDouble :: JData -> Maybe Double
getDouble (JNumber n) = Just n
getDouble _ = Nothing

getObj (JObj o) = Just o
getObj _ = Nothing

getVec (JVector v) = Just v
getVec _ = Nothing

