# Homepage (Root path)
get '/' do
  @songs = Song.all
  erb :index
end

get '/add_song' do
  @song = Song.new
  erb :add_song
end

post '/add_song' do
  @song = Song.create(title: params[:title], author: params[:author], url: params[:url])

  if @song.save
    redirect '/'
  else
    erb :add_song
  end
end


