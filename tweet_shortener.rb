require 'pry'

# Write your code here.

# Method 1
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

# Method 2
def word_substituter(tweet)
    shorten = tweet.split.collect do |word|
		if dictionary.keys.include?(word.downcase)
			word = dictionary[word.downcase]
		else
			word
		end
	end
	shorten.join(" ")
end

# Method 3
def bulk_tweet_shortener(tweets)
    tweets.collect do |tweet|
        puts word_substituter(tweet)
    end
end

# Method 4
def selective_tweet_shortener(tweet)
    if tweet.length >= 140
        word_substituter(tweet)
    else
        tweet
    end
end

# Method 5
def shortened_tweet_truncator(tweet)
    if word_substituter(tweet).length > 140
        word_substituter(tweet)[0..136] + ("...")
    else
        word_substituter(tweet)
    end
end