defmodule Sample.Enum do
    
    #in Elixir function notation, this function will called fisrt/1 where {name_of_function}/{number_of_parameters (arity)}
    def first(list) do

        #hd returns the head of a list, [1 | [2,3]] where 1 is the head and [2,3] y the tail
        hd(list)

        #Elixir, as Ruby, doesn't use return keyword. It returns the last evaluated result.
    end

    #defining a function that receives an empty list works like if(arg is null) -> return nil
    def first_with_pattern_matching([]) do
        nil
    end

    #in this case, the function will return the same result but using pattern matching parameters.
    #def first_with_pattern_matching([head | tail]) do #we can discard the unused parameters with an underscore
    def first_with_pattern_matching([head | _]) do

    
        #As pattern matching splits the list in the input of the function
        #the head variable contains the first element without use hd/1 function.
        head

    end

end