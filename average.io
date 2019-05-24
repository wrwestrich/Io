List myAverage := method(

    if(self size == 0,
        return(nil)
    )

    total := 0

    self foreach(i, val,
        if(val type != "Number",
            Exception raise(
                "NonNumericValue",
                ("The value [" .. val .. "] is not numeric. Error occured at the " .. (call message name) .. " operation.")
            )
        )

        total = total + val
    )
    return(total / (self size))
)

"Test list with no values (should return nil):" println
list myAverage println

"\nTest valid list [1,2,3,4,5]:" println
list(1,2,3,4,5) myAverage println

"\nTest with non-numeric value in list (should raise a NonNumericValue exception):" println
list(1,2,3,4,"Five") myAverage println
