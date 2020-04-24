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

    #simplify the functions
    #nice syntax
    def first_patmat_simple([]), do: nil
    def first_patmat_simple([head | _]), do: head


    #As example, the following function:
    """
    def get_total(quantity, book) do
        quantity * elem(book, 2)
    end
    """
    #Using pattern matching, the same function could be written like this :
    def get_total(quantity, {_,_,price}) do
        quantity * price
    end

    #Default parameters example
    #If a parameter is not present in the call it will take the default value (\\)
    def add_defparam(list, val \\ 0) do
        [val | list]
    end

    #first simply functions with default parameters
    #we have to change the order of the functions to avoid an arity error
    def first_patmat_defparam([head | _]), do: head
    def first_patmat_defparam([], val \\ nil), do: val


    #Optimization of the first function due to not-empty list won't work with two parameters.
    #First we can do the function signature with parameters and default value
    def first_opt(list, val \\ nil)
    #Then we can implement the not-empty list function with discard parameters as long as we don't need tail or val parameters
    def first_opt([head | _], _), do: head
    #Finally we can implement the empty list function without default value because the function signature
    def first_opt([], val), do: val


end