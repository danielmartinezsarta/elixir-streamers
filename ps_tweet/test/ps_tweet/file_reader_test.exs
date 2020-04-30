defmodule FileReaderTest do
#For make unit testing files need to use ExUnit
#mix test will execute all files with _test in its name
    use ExUnit.Case
    import PsTweet.FileReader

    #Using Mock package we can to intercept test logic and use functions written just for testing purposes.
    import Mock

    #A test for the file reader
    test "Passing a file should return a string" do
        str = get_strings_to_tweet(
                    Path.join("#{:code.priv_dir(:ps_tweet)}", "sample.txt")
                )

        assert str != nil
    end

    #New test using mock intercepting File.read function.
    test "the string should be trimmed" do
        with_mock File, [read!: fn(_) -> " ABC " end] do
            str = get_strings_to_tweet("some url beacause mock.txt")

            assert str == "ABC"
        end
    end

end