class Twitter
	attr :author, :all_tweets, :created_at, :total_tweets

	#when user first makes a Tweet, the time, a username and total tweets are recorded
	def initialize 
		@created_at = Time.now
		puts "Type a username:"
		@author = gets.chomp
		@all_tweets = []
		@total_tweets = 0
	end

	def create_tweet
		new_tweet = Tweet.new #making a new tweet created an instance of the Tweet class
		puts "Here's my latest Tweet:"
		@all_tweets << new_tweet #adds Tweet to end of array
		@total_tweets += 1
	end

	def collect_tweets
		return @all_tweets
	end

	def publish(all_tweets)
		all_tweets.each do |tweet|
			puts tweet.author
			puts tweet.created_at
			puts tweet.content
		end
	end
end

class Tweet
	attr_accessor :created_at, :content, :author

	def initialize
		@created_at = Time.now
		puts "Type your Tweet:"
		@content = gets.chomp
	end

	def edit_tweet
		puts "New Tweet:"
		@content = gets.chomp
	end
end

my_Tweet = Twitter.new
first_tweet = my_Tweet.create_tweet
all_tweets = my_Tweet.collect_tweets
puts my_Tweet.inspect
my_Tweet.publish(all_tweets)