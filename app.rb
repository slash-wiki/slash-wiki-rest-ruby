require 'sinatra/base'

class Slash < Sinatra::Base
  post "/" do
    status 200
    body JSON[response_type: 'in_channel', text: "Hello #{params[:user_id]}, the date and time is #{Time.new}."]
  end
end

run Slash.run!