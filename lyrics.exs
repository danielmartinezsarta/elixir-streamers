defmodule Sample.Lyrics do

    #First we define a function with no parameters and ir calls the function with a range parameter
    def lyrics(), do: lyrics(10)..1)
    #This function executes only when the guard clause is true, when the number is 1.
    def lyrics(first..last) when first <= last, do: get_sentece(first)
    #This function concatenates the result recusively from first to number 2
    def lyrics(first..last), do: get_sentece(first) <> lyrics(first-1..last)
    

    #Private functions in correct order for excecution with recursion
    #When the number is 2 an 1 returns custom string, else it will return a string with interpolation
    defp get_sentece(2) do
        "Tenemos 2 botellas, tomamos una y queda 1 botella \n"
    end
    defp get_sentece(1) do
        "Tenemos 1 botella, tomamos una y ya no quedan botellas.\n"
    end
     defp get_sentece(number) do
        "Tenemos #{number} botellas, tomamos una y quedan #{number-1} botellas \n"
    end

end