get '/' do
  # Look in app/views/index.erb
  erb :index
end

post '/info' do

  @url = Searcher.create_url(params[:search])


  redirect "#{@url}"

end


# http://en.wikipedia.org/w/api.php?action=query&list=allcategories&acprop=size%20&acprefix=hollywood&format=json
# http://en.wikipedia.org/w/api.php?action=query&titles=Chicago&prop=&imlimit=20&format=json

# <form action="/info" method="post">
#   <input type="text" name="search[titles]">
#   <input type="text" name="search[property]">
#   <input type="text" name="search[limit]">

#   <input type="submit" value="Go get it">
# </form>

# ?action=query
# &titles=San_Francisco
# &prop=images
# &imlimit=20
# &format=jsonfm
