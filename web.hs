{-# LANGUAGE OverloadedStrings #-}

import           Network.Miku
import           Network.Wai.Handler.Warp (run)

main :: IO ()
main = run 3000 . miku $ get "/" (html "<html><body><h1> Hello =)</h1><body></html>")
