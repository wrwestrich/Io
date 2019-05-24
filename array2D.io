List sum2D := method(

    total := 0
    flat := self flatten()
    flat foreach(i, val,
        total = total + val
    )
    return(total)
)

array2D := list(
    list(1,2,3,4,5),
    list(6,7,8,9,10),
    list(11,12,13,14,15)
)

array2D sum2D() println
