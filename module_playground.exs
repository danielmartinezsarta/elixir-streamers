#defmodule is a macro and module names should be written in PascalCase
defmodule ModulePlayground do

    #Import is a function, receive the name of the module as first argument and options as second argument.
    #In the arguments like only: is needed to include the arity of the required function.
    import IO, only: [puts: 1]
    #We can import a module that was imported by elixir for exclude functions of that module.
    #With this import we fix the problem of inspect/1 local function.
    import Kernel, except: [inspect: 1]


    #def keyword define a new function inside a module.
    def say_here do

        #puts is a function of IO module that was imported with the import statement.
        puts "I'm Here"

        #Calling inspect/1 local function will fail.
        #To fix this problem we need to import Kernel module except inspect/1 function in the top of this file.
        inspect "I'm here with inspect"

    end

    #Define a new function with one parameter (argument), the arity is the number of parameters it will receive. (inspect/1)
    def inspect(param) do
        
        puts "Starting output."
        puts param
        puts "Ending output."

    end
end