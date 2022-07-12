module TicTacToe where

import Data.List (intercalate)

data Square
  = X
  | O
  | Empty
  deriving (Show)

serializeSquare :: Square -> String
serializeSquare square = case square of
  X -> "X"
  O -> "O"
  Empty -> " "

data Row
  = Row Square Square Square
  deriving (Show)

serializeRow :: Row -> String
serializeRow (Row a b c) = intercalate "|" $ map serializeSquare [a, b, c]

data Board
  = Board
      Row
      Row
      Row
  deriving (Show)

serializeBoard :: Board -> String
serializeBoard (Board a b c) = intercalate "\n" $map serializeRow [a, b, c]

initialBoard :: Board
initialBoard =
  Board
    (Row Empty Empty Empty)
    (Row Empty Empty Empty)
    (Row Empty Empty Empty)

sampleBoard :: Board
sampleBoard =
  Board
    (Row X O Empty)
    (Row Empty X Empty)
    (Row Empty Empty X)