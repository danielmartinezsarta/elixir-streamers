use Mix.Config

#This is the configuration of the scheduler module, it allows to config intervals using "* * * * *" for every minute
config :ps_tweet, PsTweet.Scheduler, jobs: [
    {"* * * *", fn ->
        PsTweet.FileReader.get_strings_to_tweet(
            Path.join("#{:code.priv_dir(:ps_tweet)}", "sample.txt")
        )
        |> PsTweet.TweetServer.tweet

        end

    }
]