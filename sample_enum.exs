defmodule Sample.Enum do
    
    #in Elixir function notation, this function will called fisrt/1 where {name_of_function}/{number_of_parameters (arity)}
    def first(list) do

        #hd returns the head of a list, [1 | [2,3]] where 1 is the head and [2,3] y the tail
        hd(list)

        #Elixir, as Ruby, doesn't use return keyword. It returns the last evaluated result.
    end
end