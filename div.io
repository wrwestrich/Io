Number div := Number getSlot("/")

Number / := method(i,
    if(i != 0,
        self div(i),
    //else
        0
    )
)

"10 / 2:" println
(10 / 2) println

"20 / 4:" println
(20 / 4) println

"1 / 0:" println
(1 / 0) println
