require 'scraperwiki'
require 'open-uri'
require 'json'

results = JSON.parse(open('https://gic-wishes.appspot.com/a/latest').read)

ScraperWiki.save_sqlite ['body', 'register_date'], results
