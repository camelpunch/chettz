require 'sinatra'

before do
  if request.host =~ /^chettz\.com/
    redirect 'http://www.chettz.com/', 301
  end
end

get '/' do
  File.read('index.html')
end

