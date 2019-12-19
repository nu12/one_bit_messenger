class ChatsController < ApplicationController
    def index
        @users = User.joins(:sent).where(messages: { receiver_id: current_user })
        @users += User.joins(:received).where(messages: { sender_id: current_user })
        @users.uniq!
    end

    def show
        @receiver = User.find(params[:id])
        @messages = Message
            .where(sender: current_user, receiver: @receiver)
            .or(Message
            .where(sender: @receiver, receiver: current_user))
            .order(:created_at)            
    end
end
