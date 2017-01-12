class WelcomeController < ApplicationController
    def show
        render html: "Hello from Docker"
    end
end