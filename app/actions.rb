# Homepage (Root path)
def all_songs
  @songs = Song.all
end

before do
  @current_user = User.where(username: request.cookies["username"]).first if request.cookies["username"]
end

get '/' do
  all_songs

  erb :index
end

post '/' do
  all_songs

  @current_user = User.where(username: params[:username], password: params[:password]).first
  
  if @current_user
    response.set_cookie("username", :value => params[:username], :expires => Time.now + 60*60*24*365*3)
    redirect '/'
  else
    redirect '/?login=failed'
  end
end
get '/add_song' do
  @song = Song.new
  erb :add_song
end

post '/add_song' do
  @song = Song.create(title: params[:title], author: params[:author], url: params[:url], user_id: @current_user.id)

  if @song.save
    redirect '/'
  else
    erb :add_song
  end
end

get '/signup' do
  @user = User.new
  erb :signup
end

post  '/signup' do
  @user = User.create(username: params[:username],password: params[:password],email: params[:email])
  
  if @user.save
     response.set_cookie("username", :value => params[:username], :expires => Time.now + 60*60*24*365*3)
     redirect '/'
  end
    erb :signup
end

get '/logout' do
  response.set_cookie("username", :value => params[:username], :expires => Time.now - 60*60*24*365*3)
  redirect '/'
end

get '/mysongs' do
  @current_user = User.where(username: request.cookies["username"]).first
  erb :mysongs
end








