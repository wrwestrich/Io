List2D := List clone

List2D dim := method(x, y,

    //Makes dim method "static"
    if(self proto type == "List",
        return(List2D clone dim(x,y))
    )

    self setSize(x)

    for(i,0,(x-1),
        self atPut(i, (list setSize(y)))
    )
    return(self)
)

List2D get := method(x, y,
    return(self at(x) at(y))
)

List2D set := method(x, y, val,
    self at(x) atPut(y, val)

    return(self)
)

List2D transpose := method(
    x := self size
    y := self at(0) size

    matrix := List2D clone dim(x,y)

    for(i,0,(x-1),
        for(j,0,(y-1),
            matrix set(j, i, self get(i,j))
        )
    )
    return(matrix)
)

matrix := List2D dim(4,4)

"Setting matrix values:" println
matrix set(0,0,1)
matrix set(0,1,2)
matrix set(0,2,3)
matrix set(0,3,4)

matrix set(1,0,5)
matrix set(1,1,6)
matrix set(1,2,7)
matrix set(1,3,8)

matrix set(2,0,9)
matrix set(2,1,10)
matrix set(2,2,11)
matrix set(2,3,12)

matrix set(3,0,13)
matrix set(3,1,14)
matrix set(3,2,15)
matrix set(3,3,16)

matrixT := matrix transpose

"\nPrint out matrix to show the constructed list:" println
matrix println

"\nPrint out matrix transpose:" println
matrixT println

"\nGet value at 1,1 from matrix:" println
matrix get(1,1) println

"\nGet value at 3,2 from matrix:" println
matrix get(3,2) println

"\nGet value at 2,3 from matrix transpose:" println
matrixT get(2,3) println

"\nWrite matrix to file matrix.txt:" println
file := File open("./matrix.txt")
file write(matrix serialized)
file close

"\nRead in from file and print out matrix:" println
matrix2 := doFile("./matrix.txt")
matrix2 println
