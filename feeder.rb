require 'rss'
require 'open-uri'

# URL of the RSS feed
rss_url = 'https://media.rss.com/allthingscroatia/feed.xml'

  content = URI.open(rss_url).read

  # Parse the RSS feed
  feed = RSS::Parser.parse(content, false)

  # Iterate through each item in the RSS feed
  feed.items.each do |item|
    puts "Title: #{item.title}"
    puts "Link: #{item.link}"
    puts "Description: #{item.description}"
    puts "PubDate: #{item.pubDate}"
    #Separate each article by dashes
    puts "---" * 10 
  end