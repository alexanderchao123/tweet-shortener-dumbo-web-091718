
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
    dictionary.keys.include?(word) ? dictionary[word] : word
  end

  return modified.join(" ")
end


def bulk_tweet_shortener(array_of_tweets)
  
end
