#defmodule is a macro and module names should be written in PascalCase
defmodule ModulePlayground do

    #Import is a function, receive the name of the module as first argument and options as second argument.
    #In the arguments like only: is needed to include the arity of the required function.
    import IO, only: [puts: 1]


    #def keyword is for create a new function inside a module.
    def say_here do

        #puts is a function of IO module that was imported with the import statement.
        puts "I'm Here"
        
    end
end