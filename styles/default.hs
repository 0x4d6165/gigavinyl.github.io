{-# LANGUAGE OverloadedStrings #-}
import           Clay
import qualified Data.Text.Lazy.IO as T
import           Data.Monoid

styles :: Css
styles = do
  body ? do
    color black
    fontSize (px 16)
    margin (px 0) auto (px 0) auto
  Clay.div # "#header" ? do
    borderBottom solid (px 2) black
    marginBottom (px 30)
    padding (px 12) (px 0) (px 12) (px 0)
  Clay.div # "#logo" Clay.** a ? do
    color black
    float floatLeft
    fontSize (px 18)
    fontWeight bold
    textDecoration none
  Clay.div # "#header" Clay.** "#navigation" textAlign right

main :: IO ()
main = T.putStr $ renderWith pretty [] styles
