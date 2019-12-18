class ChatsController < ApplicationController
    def show
        @receiver = User.find(params[:id])
        @messages = Message
            .where(sender: current_user, receiver: @receiver)
            .or(Message
            .where(sender: @receiver, receiver: current_user))
            .order(:created_at)            
    end
end
