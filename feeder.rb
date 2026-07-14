require 'rss'
require 'open-uri'
require 'nokogiri'

# URL of the RSS feed
rss_url = 'https://news.google.com/rss/search?q=Croatia&hl=en-US&gl=US&ceid=US:en'

  content = URI.open(rss_url).read

  # Parse the RSS feed
  feed = RSS::Parser.parse(content, false)

  # Iterate through each item in the RSS feed
  feed.items.each do |item|
    puts "Title: #{item.title}"
    puts "Link: #{item.link}"
    clean_description = item.description.gsub(/<\/?[^>]*>/, "") # Remove HTML tags from description
    
    puts "Description: #{clean_description}"
    puts "PubDate: #{item.pubDate}"
    #Separate each article by dashes
    puts "---" * 10 
  end