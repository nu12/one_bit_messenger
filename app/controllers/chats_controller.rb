class ChatsController < ApplicationController
    def show
        @receiver = User.find(params[:id])
    end
end
