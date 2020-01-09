-- Step 01
-- Task 01
mySucc x = x + 1
-- Task 02
myIsNeg x = x < 0
-- Task 03
myAbs x = case x < 0 of
        True -> x * (-1)
        False -> x
-- Task 04
myMin x y = case x < y of
        True -> x
        False -> y
-- Task 05
myMax x y = case x < y of
        True -> y
        False -> x
-- Step 02
-- Task 06
myTuple x y = (x, y)
-- Task 07
myTruple x y z = (x, y, z)
-- Task 08
myFst (x, y) = x
-- Task 09
mySnd (x, y) = y
-- Task 10
mySwap (x, y) = (y, x)
-- Step 03
-- Task 11
myHead :: [a] -> a
myHead (x:xs) = x
myHead [] = error "Empty list"
-- Task 12
myTail :: [a] -> [a]
myTail (x:xs) = xs
myTail [] = error "Empty list"
