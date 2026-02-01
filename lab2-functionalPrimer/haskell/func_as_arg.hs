--create inpFunc
inpFunc a b = [a..b] 

--Define applicatorFunc
applicatorFunc inpFunc s a b = 
    if s == 's' 
    then fromIntegral (sum (inpFunc a b))
    else fromIntegral (sum (inpFunc a b)) / fromIntegral (length (inpFunc a b))

main = do
    let result = applicatorFunc inpFunc 'a' 1 8 --Call applicatorFunc with inpFunc and 'a' as args
    putStrLn("sum = " ++ show(result))