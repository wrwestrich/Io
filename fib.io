Object fibRecursive := method(i,
    if(i == 0,
        0
    )
    if(i == 1 or i == 2,
        1,
    //else
        fibRecursive(i-1) + fibRecursive(i-2)
    )
)

Object fibIter := method(i,
    nums := List clone
    nums append(0)
    nums append(1)
    for(j, 2, i,
        nums append((nums at(j-1)) + (nums at(j-2)))
    )
    nums at(i)
)

"Recursive Version:" println
fibRecursive(1) println
fibRecursive(2) println
fibRecursive(5) println
fibRecursive(9) println
fibRecursive(20) println

"" println

"Iterative Version:" println
fibIter(1) println
fibIter(2) println
fibIter(5) println
fibIter(9) println
fibIter(20) println
