defmodule Sample.Utils do
    def square(a), do: a * a

    def sum(a,b), do: a + b

    #Functions can receive another functions as parameter
    #the received function can be anonymous or regular function
    def custom_func(a,f) do
        
        #parameter function execution use a point (.) between name and parameters
        #because without point it will try to execute a defined function into the module
        #and will raise an undefined function exception
        f.(a)
    end
end