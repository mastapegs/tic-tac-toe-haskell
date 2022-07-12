module Main where

import TicTacToe (sampleBoard, serializeBoard)

main :: IO ()
main = do
  putStrLn $ serializeBoard sampleBoard
