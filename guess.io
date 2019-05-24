
//using Random does not work due to an error
//loading addons for Io. You can try it on your
//machine to see if it works, but it doesn't on mine.

//rand := (Random value(99) + 1) floor
rand := 25

IO := File standardInput

lastGuess := nil

10 repeat(
    "Guess a number between 1-100:" println

    guess := IO readLine asNumber

    if(guess == rand,
        break
    )

    if(lastGuess,
        if((lastGuess - rand) abs > (guess - rand) abs,
            "Warmer" println,
            "Colder" println
        )
    )

    lastGuess = guess
)

if(guess == rand,
    "Correct" println,
    "Lose" println
)
