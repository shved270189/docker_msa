require 'sinatra'

DIR_LOGS = './log/'

set :environment, :production

get '/logs' do
  %x(echo #{params[:log]} >> #{DIR_LOGS + params[:type]}.log)
  true
end
