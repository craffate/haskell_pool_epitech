mySucc x = x + 1
myIsNeg x = x < 0
myAbs x = case x < 0 of
        True -> x * (-1)
        False -> x
myMin x y = case x < y of
        True -> x
        False -> y
myMax x y = case x < y of
        True -> y
        False -> x
