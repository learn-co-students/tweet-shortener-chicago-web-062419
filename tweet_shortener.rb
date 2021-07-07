# Write your code here. 
require 'pry'
def dictionary
  dictionary = 
  {"hello" => 'hi', 
   "too" => '2',
   "to" => '2',
   "two" => '2',
   "for" => '4',
   "four" => '4',
   "be" => 'b',
   "you" => 'u',
   "at" =>  "@",
   "and" => "&"
  }
end
def word_substituter(tweet_string)
  array_tweet = tweet_string.split(" ")
  array_tweet.each_with_index do |word, index|
    dictionary.each do |key, value|
      if word.downcase == key
        array_tweet[index] = value
      end
    end
  end
  array_tweet.join(" ")
end

def bulk_tweet_shortener(array_tweets)
  array_tweets.each {|tweet| puts word_substituter(tweet)}
end

def selective_tweet_shortener(tweet)
  if tweet.size > 140
    word_substituter(tweet)
  else
    tweet
  end
end

def shortened_tweet_truncator(tweet)
  if tweet.length > 140
    word_substituter(tweet)
    tweet[0..136] + "..."
  else
    tweet
  end
end