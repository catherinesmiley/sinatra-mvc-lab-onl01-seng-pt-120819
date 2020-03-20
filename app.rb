require_relative 'config/environment'

class App < Sinatra::Base

    get "/" do 
        erb :user_input
    end 

    post "/" do 
        @pig_latinized = PigLatinizer.new(params[:user_phrase])
    end 

    post "/piglatinize" do 

    end

end