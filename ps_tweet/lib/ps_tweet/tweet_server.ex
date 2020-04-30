defmodule PsTweet.TweetServer do
    
    #GenServer is a behavior, an interface in another OO langs.
    use GenServer


    def start_link(_) do
        #__MODULE__ is the current module
        #:ok is for start the server
        #and the last parameter is the name of the server
        GenServer.start_link(__MODULE__, :ok, name: :tweet_server)
    end

    def init(:ok) do
        #When the server starts it will return an :ok atom with a second parameter, in this case an empty map
        {:ok, %{}}
    end

    #This function receives the twwet and calls the send function on Tweet module
    #handle_cast is for async calls
    #as we don't need to use states just return :noreply and an empty mapa
    def handle_cast({:tweet, tweet}, _) do
        PsTweet.Tweet.send(tweet)
        {:noreply, %{}}
    end

    #This function receives the tweet from users and calls the cast function that will be handled by handle_cast/2
    def tweet(tweet) do
        GenServer.cast(:tweet_server, {:tweet, tweet})
    end



end