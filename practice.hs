import Data.List
import Control.Monad

-- Building a list with Monads --

powersOfTwo :: Int -> [Int]
powersOfTwo n = do
    value <- [1 .. n]
    return (2 ^ value)

-- the Map equivilant -- 

powersOfTwoMap :: Int -> [Int]
powersOfTwoMap n = map (\x -> 2 ^ x) [1 .. n]

-- From here on it  will all be Monads --

powersOfTwoAndThree :: Int -> [(Int,Int)]
powersOfTwoAndThree n = do
    value <- [1 .. n]
    let powersOfTwo = 2 ^ value
    let powersOfThree = 3 ^ value
    return (powersOfTwo,powersOfThree)

allEvenOdds :: Int -> [(Int,Int)]
allEvenOdds n = do
    evenValue <- [2,4 .. n]
    oddValue <- [1,3 .. n]
    return (evenValue,oddValue)

-- intro to guards form the control.monad module

evenGuards :: Int -> [Int]
evenGuards n = do
    value <- [1 .. n]
    guard (even value)
    return value

evenSquares :: [Int]
evenSquares = do
    n <- [0 .. 9]
    let nSquared = n^2
    guard (even nSquared)
    return nSquared