require "pry"

def dictionary
    dictionary = {
        "hello" => "hi",
        "to" => "2",
        "two" => "2",
        "too" => "2",
        "for" => "4",
        "four" => "4",
        "be" => "b",
        "you" => "u",
        "at" => "@",
        "and" => "&"
    }
end

def word_substituter(tweet)
    # Convert tweet to array
    tweet_array = tweet.split(" ")

    # Compare each word of tweet_array against dictionary keys.
    tweet = tweet_array.collect do | word |
      if dictionary.keys.include?(word.downcase)
        word = dictionary[word.downcase]
      else 
        word = word
      end
    end.join(" ")
end

# def word_substituter(tweet)
#     # Convert tweet to array
#     tweet_array = tweet.split(" ")
    
#     # Compare each word of tweet_array against dictionary keys.
#     tweet_array.each do | word |
#         dictionary.each do | key, value |
#             if word == key.to_s.gsub(":", "")
#                 word = value
#                 tweet_short.push(word)
#                 binding.pry
#             elsif
#                 tweet_short.push(word)
#                 binding.pry
#             end
#         end
#     end
# end

def bulk_tweet_shortener(tweets)
    tweets.each do |tweet|
        puts word_substituter(tweet)
    end
end

def selective_tweet_shortener(tweet)
    if tweet.length > 140
        word_substituter(tweet)
    elsif tweet.length <= 140
        tweet
    end
end

def shortened_tweet_truncator(tweet)
    if tweet.length > 140
        word_substituter(tweet)
        tweet[0..136] + "..."
    else
        tweet[0..137]
    end
end

