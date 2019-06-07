# Write your code here.
require 'pry'
def dictionary
    dictionary = {
        "hello" => "hi",
        "to" => '2',
        "two" => '2',
        "too" => '2',
        'be' => 'b',
        'you' => 'u',
        "at" => "@",
        "and" => "&",
        "for" => '4',
        "For" => '4'
    }
end

def word_substituter(tweet)
    tweetarray = tweet.split
    dictkeys = dictionary.keys
    tweetarray.each_with_index do |word, index|
        dictionary.each do |key, value|
            if word == key
                tweetarray[index] = value
            end
        end
    end
    cooltweet = tweetarray.join(" ")
    cooltweet
end

def bulk_tweet_shortener(array)
    array.each do |tweet|
        short = word_substituter(tweet)
        puts short
    end
end

def selective_tweet_shortener(tweet)
    if tweet.length < 140
        return tweet
    else
        word_substituter(tweet)
    end
end

def shortened_tweet_truncator(tweet)
    if tweet.length > 140
        return tweet[0..139]
    else
        tweet
    end
end
