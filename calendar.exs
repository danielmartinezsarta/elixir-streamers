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

end