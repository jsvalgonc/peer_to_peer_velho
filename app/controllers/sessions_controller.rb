
class SessionsController < ApplicationController
    def create 
        redirect_to welcome_main_path, :notice => "Welcome"
    end
    
    def destroy
        redirect_to welcome_main_path, :notice => "Goodbye"
    end
end
