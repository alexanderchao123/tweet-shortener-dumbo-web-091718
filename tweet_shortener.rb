
def word_substituter(tweet)
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

  words = tweet.split(" ")

  modified = words.map do |word|
    downcase = word.downcase
    keys = dictionary.keys
    keys.include?(downcase) ? dictionary[downcase] : word
  end

  return modified.join(" ")
end

def bulk_tweet_shortener(array_of_tweets)
  array_of_tweets.each {|tweet| puts word_substituter(tweet)}
end

def selective_tweet_shortener(tweet)
  return tweet if tweet.length <= 140
end
