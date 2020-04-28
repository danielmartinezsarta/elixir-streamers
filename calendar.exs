defmodule Sample.Calendar do
    
    #Guard clauses example for return true if a year is leap
    #It will go from top to bottom 
    def is_leap_year(year) when rem(year, 400) == 0, do: true
    def is_leap_year(year) when rem(year, 100) == 0, do: false
    def is_leap_year(year) when rem(year, 4) == 0, do: true
    def is_leap_year(year), do: true

    #The guard clause is the when ... part
    #It allows operators like:
    #Comparison: ==, !=, ===, !===, >, >=, <, <=
    #Booleans: and, or, not
    #Arithmetic: +, -, *, /
    #Binary concatenation: <>
    #And the "in" operator as long as the right side is a range or a list

    #Also admits type check functions like is_atom/1, is_number/1, is_integer/1, is_pid/1, and so on
    #And functions like abs(number), lenght(list), elem(tuple,n), hd(list), tl(list)


    #Cond control statement whe need nested ifs with more clear sysntax
    def day_abbr(day) do

        cond do
            day == :Monday -> "M"
            day == :Tuesday -> "Tu"
            day == :Wednesday -> "W"
            day == :Thursday -> "Th"
            day == :Friday -> "F"            
            day == :Saturday -> "Sa"
            day == :Sunday -> "Su"
            #We can set a true value for default action.
            true -> "Invalid day"
        end
    end

    #Case expression advantage is that we can use pattern matching and guard clauses in each case
    def describe_date(date) do
        case date do
            {1,_,_} -> "Brand new month!"
            {25,12,_} -> "Merry Christmas!"
            {25, month, _} -> "Only #{12-month} months for Christmas!"
            {31,10,1517} -> "The reformation is starting"
            {31,10,_} -> "Happy Halloween!" #The order of the sentences is important because Elixir will return the first match statement
            {_, month, _} when month <= 12 -> "Just an average day" #Example of guard clause
            {_,_,__} -> "Invalid month"
        end

    end

    #Case expressions are useful when we read a file
    #as File.read/1 returns a tuple with an atom indicating the result
    def send_tweet(path) do

        case File.read(path) do
            {:ok, data} -> Tweet.send(data)
            (:error, error) -> IO.puts "Could not open the file"
        end
    end

end