class MessageChannel < ApplicationCable::Channel
  def subscribed
    # stream_from "some_channel"
    stream_for logged_user # Can create the stream based on an object
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end

# Connection
# Channel
# Transmission -> Job -> Model