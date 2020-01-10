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
-- Task 13
myLength :: [a] -> Int
myLength (x:xs) = 1 + myLength xs
myLength [] = 0
-- Task 14
myNth :: [a] -> Int -> a
myNth (x:xs) i = case i < 0 of
        True -> error "Negative index"
        False -> case i >= myLength (x:xs) of
                True -> error "Index out of range"
                False -> case i == 0 of
                        True -> x
                        False -> myNth xs (i - 1)
-- Task 15
myTake :: Int -> [a] -> [a]
myTake i (x:xs) = case i >= myLength (x:xs) of
        True -> (x:xs)
        False -> case i < 0 of
                True -> error "Negative index"
                False -> case i == 0 of
                        True -> []
                        False -> x : myTake (i - 1) xs
-- Task 16
myDrop :: Int -> [a] -> [a]
myDrop i (x:xs) = case i >= myLength (x:xs) of
        True -> []
        False -> case i == 0 of
                True -> (x:xs)
                False -> myDrop (i - 1) xs
-- Task 17
myAppend :: [a] -> [a] -> [a]
myAppend (x:xs) y = x : myAppend xs y
myAppend [] x = x
