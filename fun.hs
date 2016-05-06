import System.Environment as SE
import System.Process as SP

printPath = SE.getExecutablePath >>= print
twoPlusOne = SP.system "say Two plus one equals three"
           >> print (2+1)

saywhat :: String -> String
saywhat x = "say " ++  x
sayit x = SP.system $ saywhat x

sayExePath = SE.getExecutablePath >>= \x -> sayit x
