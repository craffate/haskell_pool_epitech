mySucc x = x + 1
myIsNeg x = x < 0
myAbs x = case x < 0 of
        True -> x * (-1)
        False -> x
