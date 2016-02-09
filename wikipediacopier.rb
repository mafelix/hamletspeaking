require 'rubygems'
require 'rest-client'

wiki_url = "https://en.wikipedia.org/"
wiki_local_filename = "wiki-page.html"

File.open(wiki_local_filename,"w") do |file|
  file.write(RestClient.get(wiki_url))
end

#copys whole webpage with restclient