module Importer where

-- for this to work properly, one must load the file containing `Funcs`
-- definition, and it can be imported with :l modules.hs module_importer.hs
import Funcs

evenTest n = isEven n

oddTest n = isOdd n

-- Hidden function that cannot be imported. Uncomment to check
--my_hidden = hidden 1
