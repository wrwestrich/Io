curlyBrackets := method(
    map := call message arguments map(value,
        self doMessage(value)
    )
    return(map)
)

list := {"This", "is", "a", "list", "using", "curly", "braces"}

list println
